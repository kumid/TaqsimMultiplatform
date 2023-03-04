package com.example.myapplication.android

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.myapplication.Greeting

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MyApplicationTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colors.background
                ) {
                    GreetingView(Greeting().greet())

                }
            }
        }
    }
}

@Composable
fun GreetingView(text: String) {
    Column(modifier = Modifier.fillMaxSize()){
        Box(
            modifier = Modifier.background(Color.Blue)
                .size(200.dp),
            contentAlignment = Alignment.TopStart
        ) {
            Text(text = Greeting().greet())
        }


        Box(
            modifier = Modifier.background(Color.Green)
                .size(200.dp),
            contentAlignment = Alignment.TopCenter
        ) {
            Text(text = Greeting().greet())
        }


        Box(
            modifier = Modifier.background(Color.Red)
                .size(200.dp),
            contentAlignment = Alignment.BottomEnd
        ) {
            Text(text = Greeting().greet())
        }
    }
//    Text(text = text)
}

@Preview
@Composable
fun DefaultPreview() {
    MyApplicationTheme {
         GreetingView("Hello, Android!")
    }
}
