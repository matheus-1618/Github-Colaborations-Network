## Github-Colaborations-Network

## Responsible Team
<div align="center" style="max-width:68rem;">
<table>
  <tr>
    <td align="center"><a href="https://github.com/matheus-1618"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/matheus-1618" width="100px;" alt=""/><br /><sub><b>Matheus Oliveira</b></sub></a><br /><a href="https://github.com/matheus-1618" title="Matheus Silva M. Oliveira"></a> </td>
   <td align="center"><a href="https://github.com/niveaabreu"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/niveaabreu" width="100px;" alt=""/><br /><sub><b>Nívea de Abreu</b></sub></a><br /><a href="https://github.com/niveaabreu" title="Nívea de Abreu"></a></td>
      <td align="center"><a href="https://github.com/RicardoMourao-py"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/RicardoMourao-py" width="100px;" alt=""/><br /><sub><b>Ricardo Filho</b></sub></a><br /><a href="https://github.com/RicardoMourao-py" title="Ricardo Filho"></a></td>

  </tr>
</table>
</div>

This is a social netowrk analysis of Github collaborations, including commits and Pull requests between January and February of 2015. The goal of this research is analyze the following hypotesis:
> The greater the chance of belonging to a community of contributors, the greater the user focus. The definition of focus is the number of contributions involving repositories for the edges over the number of total contributions.

Two definitions are important here:
* **Belonging to the Community** : A collaboration community exists in the network if the neighbors of a given user also have an edge between them, indicating that they belong to the same collaboration communities in common or famous repositories, generating a cluster of collaborations between these users. Collaborations above the average of total collaborations were used for this definition.
* **Focus**: The extent to which he concentrates his contribution time on specific projects, on minimally related or similar topics. Defined by the formula above:

>Number of developer collaborations considered for edge formation divided per total collaborations in the data, thoughtful by the Number of developer collaborations per the max Number of collaborations of an individual:*

 $$focus = \frac{edgeContributions_i}{totalContributions_i}\cdot\frac{edgeContributions_i}{maxEdgeContribution}$$


### Running the project
1. Getting the Data
The frist step is getting the data in the GH Archive hub. For this, we used a Batch File (for Windows) to get the data in the mentioned period. For get the data go to the **data/** folder:
```bash
cd data/
setup.bat
```
Wait for the download.

2. Transforming it in csv files
After getting the data, we need to ingest it in CSV files. Open the **Concat_data** notebook and execute the cells with the intent of this convertion, getting only data related to PR's and Commits.

3. Execute the analysis
After having the data locally, you'll need to use a Docker container to be able to reproduce the network analysis.

    Clone this [repository](https://github.com/hashiprobr-classroom/redesoc-conteiner), and follow this [tutorial](https://ensino.hashi.pro.br/redesoc/tutorial/conteiner/utilizacao.html).

After this steps, you can execute the analysis locally.

### Another context
To confront our hypotesis in a different context to see it's implications we've merged Reddit data (similar concept of communities[Subreddits] and Colabs[Comments]). This analysis can be viewd at **Reddit/** folder.

@Insper,2023.


