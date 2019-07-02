using UnityEngine;
using System.Collections;

public class InputHandler : MonoBehaviour
{

    public Vector2 tapPosition, releasePosition;

    public Throwable activeThrowable;

    public LayerMask throwableLayerMask;

    void Start()
    {

    }

    void Update()
    {
        HandleInput();
    }



    void HandleInput()
    {

        if (Input.GetMouseButtonDown(0))
        {
            tapPosition = Camera.main.ScreenToViewportPoint(Input.mousePosition);

            //hladame throwable objekt
            activeThrowable = FindThrowable();

            //ak sme ho nasli tak mu zavolame Attach, vypneme mu gravitaciu
            if (activeThrowable != null)
            {
                activeThrowable.Attach();
            }

        }
        else if (Input.GetMouseButton(0))
        {
            //ked pustime palec, tak sa zavola Dettach objektu throwable ktory mu zapne gravitaciu a spadne naspat nazem
            //zistujeme pohyb v priestore cez x,y poziciu mysi a z poziciu objektu relativne na kameru
            if (activeThrowable != null)
            {
                Vector3 position = Camera.main.ScreenToWorldPoint(Input.mousePosition + Vector3.forward * Mathf.Abs(Camera.main.transform.position.z - activeThrowable.transform.position.z));
                position.z  = activeThrowable.transform.position.z;

                activeThrowable.followPoint = position;
            }

        }
        else if (Input.GetMouseButtonUp(0))
        {
            releasePosition = Camera.main.ScreenToViewportPoint(Input.mousePosition);

            //ked pustime palec, tak sa zavola Dettach objektu throwable ktory mu zapne gravitaciu a spadne naspat nazem
            if (activeThrowable != null)
            {
                activeThrowable.Dettach();

            }

            activeThrowable = null;
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
