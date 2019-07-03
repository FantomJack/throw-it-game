using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rails : MonoBehaviour
{

    RailSpawner spawner;

    public Transform railSpawnPoint;


    void Start()
    {
        spawner = FindObjectOfType<RailSpawner>();

    }

    void Update()
    {
        RedunancyCheck();
    }


    void OnBecameInvisible()
    {
        spawner.rails.Remove(this);
        Destroy(gameObject);
    }

    void RedunancyCheck()
    {
        if (transform.position.z < Camera.main.transform.position.z)
        {
            OnBecameInvisible();
        }
    }

}
