from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from typing import List
import json
import os

app = FastAPI(title="Mini DB API")

DATA_FILE = "data.json"

# Ensure data file exists
if not os.path.exists(DATA_FILE):
    with open(DATA_FILE, "w") as f:
        json.dump([], f)

# Pydantic model for validation
class Item(BaseModel):
    id: int
    name: str
    price: float

# Helper functions
def read_data():
    with open(DATA_FILE, "r") as f:
        return json.load(f)

def write_data(data):
    with open(DATA_FILE, "w") as f:
        json.dump(data, f, indent=2)

# Create / Add item
@app.post("/add_item", response_model=Item)
def add_item(item: Item):
    data = read_data()
    if any(existing["id"] == item.id for existing in data):
        raise HTTPException(status_code=400, detail="Item ID already exists")
    data.append(item.dict())
    write_data(data)
    return item

# Read / Get all items
@app.get("/get_items", response_model=List[Item])
def get_items():
    return read_data()

# Read / Get item by id
@app.get("/get_item/{item_id}", response_model=Item)
def get_item(item_id: int):
    data = read_data()
    for item in data:
        if item["id"] == item_id:
            return item
    raise HTTPException(status_code=404, detail="Item not found")

# Update item
@app.put("/update_item/{item_id}", response_model=Item)
def update_item(item_id: int, updated_item: Item):
    data = read_data()
    for i, item in enumerate(data):
        if item["id"] == item_id:
            data[i] = updated_item.dict()
            write_data(data)
            return updated_item
    raise HTTPException(status_code=404, detail="Item not found")

# Delete item
@app.delete("/delete_item/{item_id}")
def delete_item(item_id: int):
    data = read_data()
    for i, item in enumerate(data):
        if item["id"] == item_id:
            deleted = data.pop(i)
            write_data(data)
            return {"detail": f"Deleted item {deleted}"}
    raise HTTPException(status_code=404, detail="Item not found")
