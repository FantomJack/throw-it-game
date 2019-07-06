using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rails : MonoBehaviour
{

    RailSpawner spawner;

    public Transform railSpawnPoint;

    Rigidbody rb;

    void Start()
    {
        spawner = FindObjectOfType<RailSpawner>();
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        RedunancyCheck();
    }

    void FixedUpdate()
    {
        Vector3 pos = transform.position;
        pos.z -= GlobalVariables.instance.actualGlobalMovingSpeed * Time.fixedDeltaTime;
        rb.MovePosition(pos);
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
