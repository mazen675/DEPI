package com.example.booksplatform

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.RatingBar
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class BookAdapter(val books:List<Book>):RecyclerView.Adapter<BookAdapter.BookViewHolder>() {
    class BookViewHolder(val row : View): RecyclerView.ViewHolder(row){
        val ivBook=row.findViewById<ImageView>(R.id.iv_book)
        val tvTitle = row.findViewById<TextView>(R.id.tv_title)
        val tvAuthor = row.findViewById<TextView>(R.id.tv_author)
        val rbRating=row.findViewById<RatingBar>(R.id.rb_rating)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): BookViewHolder {
        val layout = LayoutInflater.from(parent.context).inflate(R.layout.item_book,parent,false)
        return BookViewHolder(layout)
    }

    override fun getItemCount(): Int {
        return books.size
    }

    override fun onBindViewHolder(holder: BookViewHolder, position: Int) {
        val book=books.get(position)
        holder.ivBook.setImageResource(book.image)
        holder.tvTitle.text=book.title
        holder.tvAuthor.text=book.author
        holder.rbRating.rating=book.rating.toFloat()
    }
}