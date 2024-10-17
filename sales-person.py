#607
import pandas as pd

def sales_person(sales_person: pd.DataFrame, company: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    try:
        com_id = company.loc[company['name'] == 'RED', 'com_id'].iloc[0]
        red_orders_salesids = orders[orders['com_id'] == com_id]['sales_id']
    except:
        red_orders_salesids = pd.DataFrame([])
    not_red_salespersons = sales_person[~sales_person['sales_id'].isin(red_orders_salesids)][['name']]
    return not_red_salespersons
