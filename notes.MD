stuff to try

https://blog.nraboy.com/2015/04/using-gradle-in-your-command-line-android-project/

https://blog.nraboy.com/2014/09/create-android-app-start-finish/

android create project --activity [activityname] --package [packagename] --target [androidtarget] --path [projectpath] --gradle --gradle-version [gradleversion]




import android.app.Activity;

import android.os.Bundle;

import android.widget.TextView;



public class HelloAndroid extends Activity {

   /** Called when the activity is first created. */
   
   @Override
   
   public void onCreate(Bundle savedInstanceState) {
   
       super.onCreate(savedInstanceState);
       
       TextView tv = new TextView(this);
       
       tv.setText("Hello, Android");
       
       setContentView(tv);
       
   }
   
}





android update project --path .
