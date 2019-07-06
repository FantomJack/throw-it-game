using UnityEngine;
using System.Collections;

public class Obstacle : MonoBehaviour
{

    private bool rotateAlready = false;

    private Animator anim;

    [HideInInspector]
    public ObstacleSpawner spawner;

    private bool disabled = false;

    public Transform targetCenter;

    private void Start()
    {
        anim = GetComponent<Animator>();
        anim.enabled = false;

    }

    private void Update()
    {
        CheckForRotationPoint();
    }


    private void CheckForRotationPoint()
    {
        if (transform.position.z < GlobalVariables.instance.rotationPoint.position.z & !rotateAlready & !disabled)
        {
            anim.enabled = true;
            Disable();
        }
    }


    public void Disable()
    {
        disabled = true;
        spawner.GetObstacles().Remove(this);
        spawner.SetActiveObstacle(spawner.GetObstacles()[0]);
        Destroy(gameObject, 2);

    }

}