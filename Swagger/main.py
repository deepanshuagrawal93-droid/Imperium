from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
import json
import os

app = FastAPI(title="Mini Database API", version="1.1")
DATA_FILE = "data.json"

# Pydantic model for an item (without ID for POST)
class Item(BaseModel):
    name: str
    description: str = None

# Utility functions
def read_data():
    if not os.path.exists(DATA_FILE) or os.path.getsize(DATA_FILE) == 0:
        return []
    with open(DATA_FILE, "r") as f:
        return json.load(f)

def write_data(data):
    with open(DATA_FILE, "w") as f:
        json.dump(data, f, indent=4)

def get_next_id(items):
    if not items:
        return 1
    return max(item["id"] for item in items) + 1

# Routes
@app.get("/items", summary="Get all items")
def get_items():
    return read_data()

@app.get("/items/{item_id}", summary="Get an item by ID")
def get_item(item_id: int):
    items = read_data()
    for item in items:
        if item["id"] == item_id:
            return item
    raise HTTPException(status_code=404, detail="Item not found")

@app.post("/items", summary="Add a new item")
def add_item(item: Item):
    items = read_data()
    new_item = item.dict()
    new_item["id"] = get_next_id(items)
    items.append(new_item)
    write_data(items)
    return {"message": "Item added successfully", "item": new_item}

@app.put("/items/{item_id}", summary="Update an existing item")
def update_item(item_id: int, updated_item: Item):
    items = read_data()
    for i, item in enumerate(items):
        if item["id"] == item_id:
            items[i]["name"] = updated_item.name
            items[i]["description"] = updated_item.description
            write_data(items)
            return {"message": "Item updated successfully", "item": items[i]}
    raise HTTPException(status_code=404, detail="Item not found")

@app.delete("/items/{item_id}", summary="Delete an item")
def delete_item(item_id: int):
    items = read_data()
    for i, item in enumerate(items):
        if item["id"] == item_id:
            del items[i]
            write_data(items)
            return {"message": "Item deleted successfully"}
    raise HTTPException(status_code=404, detail="Item not found")
