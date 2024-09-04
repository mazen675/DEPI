package com.example.meals

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.navigation.findNavController
import androidx.navigation.fragment.findNavController
import com.example.meals.MealAdapter
import com.example.meals.Meal
import com.example.meals.R
import com.example.meals.databinding.FragmentMealsBinding

class MealsFragment : Fragment(),MealAdapter.MealClickListener {

    lateinit var binding: FragmentMealsBinding
    var meals: MutableList<Meal> = mutableListOf()
    lateinit var mealAdapter: MealAdapter


    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding= FragmentMealsBinding.inflate(inflater,container,false)

        meals= mutableListOf(
            Meal(resources.getString(R.string.burger),R.drawable.burger),
            Meal(resources.getString(R.string.steak),R.drawable.filletsteak),
            Meal(resources.getString(R.string.pancakes),R.drawable.pancakes),
            Meal(resources.getString(R.string.pizza),R.drawable.pizza),
            Meal(resources.getString(R.string.shawerma),R.drawable.shawerma),
            Meal(resources.getString(R.string.waffles),R.drawable.waffles)
        )


        mealAdapter=MealAdapter(meals,this)

        binding.rvMeals.adapter=mealAdapter

        return binding.root
    }
    override fun onMealClicked(meal: Meal) {
        val action = MealsFragmentDirections.actionMealsFragmentToMealDetailsFragment(meal)
        findNavController().navigate(action)

    }


}