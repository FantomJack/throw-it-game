using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class ObstacleSpawner : MonoBehaviour
{

    public Transform hangingPoint;
    public Transform movingTransformParent;

    public float waitBetweenSpawnInterval = 5;
    private float counter = 0;

    [SerializeField]
    private GameObject obstaclePrefab;
    private List<Obstacle> obstacles;
    private Obstacle activeObstacle;

    private bool isEmptyAtStart = true;

   private void Start()
    {
        obstacles = new List<Obstacle>();
    }


    private void Update()
    {
        CheckForNextSpawn();

    }


    private void CheckForNextSpawn()
    {
        if (counter < waitBetweenSpawnInterval)
        {
            counter += Time.deltaTime;
        }
        else
        {
            counter = 0;
            Spawn();
        }

    }

    private void Spawn()
    {
        GameObject temp = Instantiate(obstaclePrefab, hangingPoint.position, Quaternion.identity);
        temp.transform.parent = movingTransformParent;

        Obstacle obstacle = temp.GetComponent<Obstacle>();
        obstacle.spawner = this;
        obstacles.Add(obstacle);
        if (isEmptyAtStart)
        {
            SetActiveObstacle(obstacle);
            isEmptyAtStart = false;
        }
    }


    public List<Obstacle> GetObstacles()
    {
        return obstacles;
    }

    public void SetActiveObstacle(Obstacle obstacle)
    {
        activeObstacle = obstacle;
        GlobalVariables.instance.activeObstacle = activeObstacle;
    }

    public Obstacle GetActiveObstacle()
    {
        return activeObstacle;
    }

}
