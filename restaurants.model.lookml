- connection: mysql-restaurants

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: train_data

# - explore: raw_reviews

# - explore: restaurants

# - explore: reviews

# - explore: scored_reviews

