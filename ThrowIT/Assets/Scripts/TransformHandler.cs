using UnityEngine;
using System.Collections;

public class TransformHandler : MonoBehaviour
{

    public bool resetAfterOffset;
    public float offsetZ;
    Vector3 startingPosition;

    void Start()
    {
        startingPosition = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        Move();
        if (resetAfterOffset)
        {
            CheckForOffset();
        }
    }

    void Move()
    {
        transform.position += Vector3.back * GlobalVariables.instance.actualGlobalMovingSpeed * Time.deltaTime;
    }


    void CheckForOffset()
    {
        if (Mathf.Abs(transform.position.z - startingPosition.z) > offsetZ)
        {

            float deltaZ = startingPosition.z - transform.position.z;

            Vector3 pos = transform.position;
            pos.z += deltaZ;
            transform.position = pos;

            for (int i = 0; i < transform.childCount; i++)
            {
                Vector3 p = transform.GetChild(i).position;
                p.z -= deltaZ;
                transform.GetChild(i).position = p;
            }

        }
    }
}
