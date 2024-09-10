package com.example.meals

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView.ViewHolder
import com.example.meals.MealAdapter.MyViewHolder
import com.example.meals.Meal
import com.example.meals.databinding.ItemMealBinding

class MealAdapter (val data: List<Meal>,val mealClickListener: MealClickListener)
    : ListAdapter<Meal, MyViewHolder>(UserItemDiffCallback()) {

    class MyViewHolder(val binding: ItemMealBinding) : ViewHolder(binding.root) {
        companion object{
            fun from(parent: ViewGroup) : MyViewHolder{
                val layoutInflater = LayoutInflater.from(parent.context)
                val binding = ItemMealBinding.inflate(layoutInflater,parent,false)
                return MyViewHolder(binding)
            }
        }
    }
    interface MealClickListener {
        fun onMealClicked(meal: Meal)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder {
        return MyViewHolder.from(parent)
    }

    override fun getItemCount(): Int {
        return data.size
    }

    override fun onBindViewHolder(holder: MyViewHolder, position: Int) {
        holder.binding.meal=data.get(position)
        holder.binding.ivMeal.setImageResource(data.get(position).image)
        holder.binding.tvName.text=data.get(position).name
        holder.binding.root.setOnClickListener {
            mealClickListener.onMealClicked(data.get(position))
        }
    }

}

class UserItemDiffCallback: DiffUtil.ItemCallback<Meal>() {
    override fun areItemsTheSame(oldItem: Meal, newItem: Meal): Boolean {
        return oldItem == newItem
    }

    override fun areContentsTheSame(oldItem: Meal, newItem: Meal): Boolean {
        return oldItem == newItem
    }

}