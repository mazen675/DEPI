package com.example.meals
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.navArgs
import com.example.meals.databinding.FragmentMealDetailsBinding

class MealDetailsFragment : Fragment() {

    lateinit var binding: FragmentMealDetailsBinding
    private val args: MealDetailsFragmentArgs by navArgs()

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding= FragmentMealDetailsBinding.inflate(inflater,container,false)

        val meal=args.meal
        binding.ivMeal.setImageResource(meal.image)
        binding.tvName.text=meal.name

        return binding.root
    }
}