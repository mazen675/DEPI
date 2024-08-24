package com.example.booksplatform

import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.databinding.DataBindingUtil
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.booksplatform.databinding.ActivityMainBinding

class MainActivity : ComponentActivity() {
lateinit var binding:ActivityMainBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        val view: View = binding.root
        setContentView(view)



        val books=mutableListOf<Book>(
            Book(R.drawable.solitude, "One Hundred Years of Solitude","by Gabriel García Márquez",3.5),
            Book(R.drawable.nostra, "Terra Nostra" ," by Carlos Fuentes",3.0),
            Book(R.drawable.angels, "Angels and Demons", "by Dan Brown" ,4.0),
            Book(R.drawable.sword, "The Sword Thief", "by Peter Lerangis",2.0),
            Book(R.drawable.blood, "Bloodline", "by Sidney Sheldon",2.0),
            Book(R.drawable.spirits, "The House of the Spirits", "by Isabel Allende",3.0),
            Book(R.drawable.humming, "The Hummingbird's Daughter" ,"by Luis Alberto Urrea",3.5),
        )
        val bookAdapter=BookAdapter(books)
        binding.rvBooks.layoutManager= LinearLayoutManager(this)
        binding.rvBooks.adapter=bookAdapter

        binding.appbar.materialToolbar.setOnMenuItemClickListener {
            if (it.itemId.equals(R.id.bell))
            Toast.makeText(this,R.string.notification_clicked,Toast.LENGTH_SHORT).show()
            true
        }
        binding.appbar.materialToolbar.setNavigationOnClickListener{
            binding.drawer.open()
        }
        binding.navigationView.setNavigationItemSelectedListener {
            when(it.itemId){
                R.id.reviews->{
                    Toast.makeText(this,R.string.reviews_clicked,Toast.LENGTH_SHORT).show()
                                        true
                }
                R.id.favourite->{
                    Toast.makeText(this,R.string.favourite_clicked,Toast.LENGTH_SHORT).show()
                    true
                }
                R.id.search->{
                    Toast.makeText(this,R.string.search_clicked,Toast.LENGTH_SHORT).show()
                    true
                }
                R.id.profile->{
                    Toast.makeText(this,R.string.profile_clicked,Toast.LENGTH_SHORT).show()
                    true
                }
                R.id.settings->{
                    Toast.makeText(this,R.string.settings_clicked,Toast.LENGTH_SHORT).show()
                    true
                }
                else->false
            }
        }

    }
}