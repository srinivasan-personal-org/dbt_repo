import subprocess
import os

def get_target_files_path(directory_path,target_files_list):
    target_files_path = []
    for root, dirs, files in os.walk(directory_path):
        for file in files:
            if file in target_files_list:
                target_files_path.append(os.path.join(root, file))
    return target_files_path

        
def create_daynamic_query(project_name,command):
    target_folder_path = "D:\\Work\\wineDirect\\dbt_local_project\\dbt_repo\\target\\compiled\\my_new_project"
    db_name = "dev_transform"
    schema_name = "google_drive"
    query_list = []
    model_names_list = []
    result = subprocess.run(command, shell=True, capture_output=True)
    result = result.stdout.decode('utf-8')
    print(result)
    result = result.split('\n')
    for i in result:
        if project_name in i:
            model_name = i.split(' ')[1].split('.')[-1]
            query = f"create or replace table {db_name}.{schema_name}.{model_name} clone {db_name.replace('dev','prod')}.{schema_name}.{model_name};"
            query_list.append(query)
            model_names_list.append(f"{model_name}.sql")

    print(query_list)   
    
    return model_names_list


create_daynamic_query('my_new_project','dbt ls --select tag:google_drive')

str1 = "dev_transform"
print(str1.replace('dev','prod'))

