package com.example.meals

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.example.meals.databinding.FragmentPlanBinding

class PlanFragment : Fragment() {

    lateinit var binding: FragmentPlanBinding

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding= FragmentPlanBinding.inflate(inflater,container,false)


        return binding.root
    }
}