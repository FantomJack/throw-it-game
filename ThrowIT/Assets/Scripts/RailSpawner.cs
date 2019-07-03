using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RailSpawner : MonoBehaviour
{
    [SerializeField]
    GameObject railsPrefab;
    public int maximumRailsCount = 10;

    public List<Rails> rails = new List<Rails>();



    void Start()
    {

    }

    void Update()
    {
        CheckForSpawn();
    }

    private void CheckForSpawn()
    {
        if (rails.Count < maximumRailsCount)
        {
            GameObject temp = Instantiate(railsPrefab, rails[rails.Count - 1].railSpawnPoint.position, Quaternion.identity);
            temp.transform.parent = transform;
            Rails rail = temp.GetComponent<Rails>();
            rails.Add(rail);

        }
    }



}
