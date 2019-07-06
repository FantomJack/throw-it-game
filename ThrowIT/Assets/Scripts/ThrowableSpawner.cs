using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThrowableSpawner : MonoBehaviour
{
    public GameObject throwablePrefab;

    public Transform spawnPoint;

    public float waitBetweenSpawnInterval = 5;
    private float counter = 0;


    void Start()
    {
        
    }

    void Update()
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
        GameObject temp = Instantiate(throwablePrefab, spawnPoint.position, Quaternion.identity);
    }


}
