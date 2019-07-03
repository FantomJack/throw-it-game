using UnityEngine;
using System.Collections;

public class Obstacle : MonoBehaviour
{

    private bool rotateAlready = false;

    private Animator anim;

    void Start()
    {
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        CheckForRotationPoint();
    }


    private void CheckForRotationPoint()
    {
        if (transform.position.z < GlobalVariables.instance.rotationPoint.position.z & !rotateAlready)
        {
            anim.enabled = true;
        }
    }


}
