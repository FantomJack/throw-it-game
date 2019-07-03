using UnityEngine;
using System.Collections;

public class InputHandler : MonoBehaviour
{

    Vector2 lastPosition, releasePosition;

    Throwable activeThrowable;

    public LayerMask throwableLayerMask;

    public float zVelocity = 10;
    [Range(1,20)]
    public float throwMultiplier = 5;

    float lastTime = 0;
    public float minimalSwipeVelocity;

    void FixedUpdate()
    {
        HandleInput();
    }



    void HandleInput()
    {

        if (Input.GetMouseButtonDown(0))
        {
            //hladame throwable objekt
            activeThrowable = FindThrowable();

            //ak sme ho nasli tak mu zavolame Attach
            if (activeThrowable != null)
            {
                activeThrowable.Attach();

                lastPosition = Camera.main.ScreenToViewportPoint(Input.mousePosition);
                lastTime = Time.time;
            }


        }
        else if (Input.GetMouseButton(0))
        {
            lastPosition = Camera.main.ScreenToViewportPoint(Input.mousePosition);

            //ked pustime palec, tak sa zavola Dettach objektu throwable ktory mu zapne gravitaciu a spadne naspat nazem
            //zistujeme pohyb v priestore cez x,y poziciu mysi a z poziciu objektu relativne na kameru
            if (activeThrowable != null)
            {

                Vector3 position = Camera.main.ScreenToWorldPoint(Input.mousePosition + Vector3.forward * Mathf.Abs(Camera.main.transform.position.z - activeThrowable.transform.position.z));
                position.z = activeThrowable.transform.position.z;

                Vector3 dir = position - activeThrowable.transform.position;

                float velocityMultiplier = dir.magnitude / Time.deltaTime;

                Vector3 velocity = dir * velocityMultiplier;

                activeThrowable.GetRigidbody().velocity = velocity;


                lastPosition = Camera.main.ScreenToViewportPoint(Input.mousePosition);
                lastTime = Time.time;
            }


        }
        else if (Input.GetMouseButtonUp(0))
        {
            //ked pustime palec, tak sa zavola Dettach objektu 
            if (activeThrowable != null)
            {
                float deltaTime = Time.time - lastTime;
                releasePosition = Camera.main.ScreenToViewportPoint(Input.mousePosition);

                if ((lastPosition - releasePosition).magnitude / deltaTime > minimalSwipeVelocity)
                {

                    Vector3 position = Camera.main.ScreenToWorldPoint(Input.mousePosition + Vector3.forward * Mathf.Abs(Camera.main.transform.position.z - activeThrowable.transform.position.z));
                    position.z = activeThrowable.transform.position.z;

                    Vector3 dir = position - activeThrowable.transform.position;

                    Vector3 velocity = dir.normalized * throwMultiplier;

                    velocity.z = zVelocity;

                    activeThrowable.GetRigidbody().velocity = velocity;
                }

                activeThrowable.Dettach();
                activeThrowable = null;
            }

        }


    }

    //najdeme objekty ktore maju tag Throwable, iba tieto objekty bude mozne chytit a hodit
    public Throwable FindThrowable()
    {

        RaycastHit hit;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

        if (Physics.Raycast(ray, out hit, 10, throwableLayerMask))
        {
            Debug.Log(hit.collider.name);

            return hit.collider.gameObject.GetComponent<Throwable>();

        }

        return null;
    }
}
