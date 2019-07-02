using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Swipe : MonoBehaviour
{
    public int rayLength;
    public LayerMask layerMask;
    
    // Vytvory prazdny GameObject, do ktoreho budeme vkladat nas GO
    private GameObject selectedObject;
    private Vector3 objectPos;
    private bool destroyed = false;

    //zadefinujeme si zaciatocnu a konecnu poziciu rayu
    private Vector2 touchPosStart, touchPosFinish, direction = Vector2.zero;
    float touchTimeStart, touchTimeFinish, timeInterval;

    [SerializeField]
    float throwForceInXandY = 1f; // Control throw force in X and Y directions

    [SerializeField]
    float throwForceInZ = 50f; // Control throw force in Z direction

    private void Update()
    {
        //pri kazdom snimku sa spusti HandleInput
        HandleInput();

    }

    // Nájde objekt, na ktorý stláčame prstom
    public GameObject FindObject()
    {
        Vector2 tapPosition = new Vector2(0, 0);
        tapPosition = Input.mousePosition;

        RaycastHit hit;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

        // Debug.DrawRay(ray.origin, ray.direction);

        if (Physics.Raycast(ray, out hit, rayLength, layerMask))
        {
            Debug.Log(hit.collider.name);
            return hit.collider.gameObject;
        }
        return null;
    }
    public void HandleInput()
    {
        //zisti ci sme sa dotkli obrazovky alebo stacili lave tlacidlo mysky
        if (Input.GetMouseButtonDown(0))
        {
            
            selectedObject = FindObject();
            if(selectedObject != null)
            {
                touchPosStart = Input.mousePosition;
                touchTimeStart = Time.time;
                //ak sa našiel nejaký objekt, tak začiatočná pozícia myšky a Času

                // float halfWay = (GameObject.Find("Prekazka").transform.position.z - selectedObject.transform.position.z);

                objectPos = selectedObject.transform.position;

            }
           
        }else if (Input.GetMouseButton(0))
        {
            if(selectedObject != null)
            {
                touchPosFinish = Input.mousePosition;
                touchTimeFinish = Time.time;

                timeInterval = touchTimeFinish - touchTimeStart;

                direction = touchPosStart - touchPosFinish;

                selectedObject.GetComponent<Rigidbody>().isKinematic = false;
                selectedObject.GetComponent<Rigidbody>().AddForce(-direction.x * throwForceInXandY, -direction.y * throwForceInXandY, throwForceInZ/timeInterval );

                // Destroy ball in 4 seconds
                Destroy(selectedObject, 3f);

                destroyed = true;

            }

        }

        StartCoroutine("WaitBeforeInstantiate()");

    }

    IEnumerable WaitBeforeInstantiate()
    {
        if (destroyed)
        {
            yield return new WaitForSeconds(5);
            Instantiate(selectedObject, objectPos, Quaternion.identity);

            destroyed = false;
        }
    }
}
