<div align="center">

![k8s+airflow](img/kubernetes+airflow.jpg)

</div>

## Docker + Kubernetes + AirFlow + Spark Operator

Estudo de caso de um ambiente Kubernetes na Google Cloud, com Cloud Storage (bucket), como parte do Módulo 4 do curso de MBA em Engenharia de Dados - IGTI - Bootcamp Engenheiro de dados Cloud, usando as seguites ferramentas/tecnologias:

* Docker (docker file, docker job) - Docker Desktop (https://docs.docker.com/desktop/windows/install/)
* Google SDK Client (https://cloud.google.com/sdk/docs/install-sdk)
* Kubernetes Engine (pod, job, deployment e service)
* Cloud Storage
* Python (https://www.python.org/downloads/)
* Apache Airflow - Helm Chart for Apache Airflow (https://airflow.apache.org/docs/helm-chart/stable/index.html)
* Spark Operator 
* Kubectx (https://github.com/ahmetb/kubectx)
* Chocolatey (https://chocolatey.org/install#individual)
* Kubernetes CLI - Kubectl (https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/)
* Visual Studio Code (https://code.visualstudio.com/download)
* Terraform (https://www.terraform.io/downloads)

Procedimento utlizado para provisionamento do Cluster Kubernetes e do Apache AirFlow:

`gcloud container clusters create airflow-cluster --machine-type e2-medium --num-nodes 1 --region "us-east1"`

`gcloud container clusters get-credentials airflow-cluster --region "us-east1"`

`kubectl create namespace airflow`

`helm repo add apache-airflow https://airflow.apache.org`

`helm repo list`

`helm upgrade --install airflow apache-airflow/airflow -n airflow --debug`
<br>OU<br>
`helm install airflow apache-airflow/airflow -n airflow --debug`

`kubectl port-forward svc/airflow-webserver 8080:8080 -n airflow`

`helm show values apache-airflow/airflow > airflow/my_values.yaml`

`helm upgrade --install airflow apache-airflow/airflow -n airflow -f airflow/my_values.yaml --debug`

`gcloud container clusters delete airflow-cluster --region "us-east1"`


<div align="center">

![airflow](img/airflow.jpg)

</div>