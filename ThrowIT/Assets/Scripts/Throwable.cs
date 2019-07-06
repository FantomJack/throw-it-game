using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Throwable : MonoBehaviour
{
    //tag ktory automaticky nastavime vsetkym objektom s tymto skriptom
    public static string THROWABLE_TAG = "Throwable";

    private Rigidbody rb;

    private bool attached = false;

    private Vector3 meetingPos = Vector3.zero;


    void Start()
    {
        gameObject.tag = THROWABLE_TAG;

        rb = GetComponent<Rigidbody>();

    }

    private void Update()
    {
    }

    private void DebugCheck()
    {
        if (GlobalVariables.instance.activeObstacle)
        {
            // Debug.DrawLine(transform.position, GlobalVariables.instance.activeObstacle.transform.position);
        }
        if (meetingPos != Vector3.zero)
        {
            Debug.DrawLine(transform.position, meetingPos);
            if (GlobalVariables.instance.activeObstacle)
            {
                Debug.DrawLine(GlobalVariables.instance.activeObstacle.targetCenter.position, meetingPos);
            }
        }
    }

    public void Attach()
    {
        attached = true;
    }

    public void Dettach()
    {
        attached = false;
    }


    public void Throw(Vector3 velocity)
    {
        Obstacle ob = GlobalVariables.instance.activeObstacle;

        Vector3 dir = ob.targetCenter.position - transform.position;

        float distance = dir.magnitude;

        float obVelocity = GlobalVariables.instance.actualGlobalMovingSpeed;

        float timeOfMeeting = distance / Mathf.Abs(obVelocity + velocity.z);

        float gravity = Physics.gravity.magnitude;

        float meetDistanceY = velocity.y * timeOfMeeting - (gravity * Mathf.Pow(timeOfMeeting, 2)) / 2;
        float meetDistanceX = velocity.x * timeOfMeeting;
        float meetDistanceZ = velocity.z * timeOfMeeting;

        meetingPos = new Vector3(transform.position.x + meetDistanceX, transform.position.y + meetDistanceY, transform.position.z + meetDistanceZ);
        if (CheckForFutureCollision(ob))
        {
            rb.velocity = VelocityTowardsObstacleCenter(ob, timeOfMeeting);
        }
        else
        {
            rb.velocity = velocity;

        }

    }

    public Rigidbody GetRigidbody()
    {
        return rb;
    }

    public bool IsAttached()
    {
        return attached;
    }

    private bool CheckForFutureCollision(Obstacle ob)
    {
        GameObject futureO = new GameObject();
        GameObject futureT = new GameObject();

        Vector3 oPosition = ob.targetCenter.position;
        Vector3 tPosition = meetingPos;
        oPosition.z = meetingPos.z;

        futureO.transform.position = oPosition;
        futureT.transform.position = tPosition;

        futureO.transform.localScale = ob.targetCenter.parent.transform.localScale;
        futureT.transform.localScale = transform.localScale;


        BoxCollider oCollider = futureO.AddComponent<BoxCollider>();
        BoxCollider tCollider = futureT.AddComponent<BoxCollider>();

        if (oCollider.bounds.Intersects(tCollider.bounds))
        {
            Destroy(futureO);
            Destroy(futureT);
            Debug.Log("Is Collision");
            return true;
        }
        else
        {
            Destroy(futureO);
            Destroy(futureT);
            Debug.Log("Is not Collision");
            return false;
        }

    }

    private Vector3 VelocityTowardsObstacleCenter(Obstacle ob, float timeOfMeeting)
    {

        Vector3 target = meetingPos;

        target.x = ob.targetCenter.position.x;
        target.y = ob.targetCenter.position.y;

        float gravity = Physics.gravity.magnitude;

        Vector3 dir = target - transform.position;

        float distance = dir.magnitude;

        float xDistance = dir.x;
        float yDistance = dir.y;
        float zDistane = dir.z;

        float xVelocity = xDistance / timeOfMeeting;
        float yVelocity = (yDistance + (gravity * Mathf.Pow(timeOfMeeting, 2) / 2)) / timeOfMeeting;
        float zVelocity = zDistane / timeOfMeeting;

        return new Vector3(xVelocity, yVelocity, zVelocity);


    }


}
