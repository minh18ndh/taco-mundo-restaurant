import random

from datetime import datetime, timedelta

start_date1 = datetime(2023, 6, 1)
end_date1 = datetime(2023, 7, 1)

start_date2 = datetime(2023, 7, 3)
end_date2 = datetime(2023, 8, 3)

for i in range(1, 101):
    quantity = round(random.uniform(2.0, 100.0), 1)
    
    random_date1 = start_date1 + timedelta(days=random.randint(0, (end_date1 - start_date1).days))
    date1 = random_date1.strftime('%Y-%m-%d')

    random_date2 = start_date2 + timedelta(days=random.randint(0, (end_date2 - start_date2).days))
    date2 = random_date2.strftime('%Y-%m-%d')

    print(f"({i}, 'Beef', {quantity}, '{date1}', '{date2}', 'kg'),")
