package com.web.service;

import com.web.dto.request.BlogRequest;
import com.web.dto.response.BlogResponse;
import com.web.entity.Blog;
import com.web.exception.MessageException;
import com.web.mapper.BlogMapper;
import com.web.repository.BlogRepository;
import com.web.utils.CommonPage;
import com.web.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

@Component
public class BlogService{

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private UserUtils userUtils;

    @Autowired
    private BlogMapper blogMapper;

    @Autowired
    private CommonPage commonPage;

    public BlogResponse save(BlogRequest request) {
        Blog blog = blogMapper.requestToBlog(request);
        blog.setUser(userUtils.getUserWithAuthority());
        blog.setCreatedDate(new Date(System.currentTimeMillis()));
        Blog result = blogRepository.save(blog);
        return blogMapper.blogToResponse(result);
    }

    public BlogResponse update(BlogRequest request) {
        Blog blog = blogMapper.requestToBlog(request);
        blog.setUser(userUtils.getUserWithAuthority());
        blog.setCreatedDate(new Date(System.currentTimeMillis()));
        Blog result = blogRepository.save(blog);
        return blogMapper.blogToResponse(result);
    }

    public void delete(Long id) {
        Optional<Blog> blog = blogRepository.findById(id);
        if (blog.isEmpty()){
            throw new MessageException("Blog not found");
        }
        blogRepository.delete(blog.get());
    }

    public BlogResponse findById(Long id) {
        Optional<Blog> blog = blogRepository.findById(id);
        if (blog.isEmpty()){
            throw new MessageException("Blog not found");
        }
        return blogMapper.blogToResponse(blog.get());
    }


    public Page<BlogResponse> findAll(Pageable pageable) {
        Page<Blog> page = blogRepository.findAll(pageable);
        List<BlogResponse> list = blogMapper.listBlogToResponse(page.getContent());
        Page<BlogResponse> result = commonPage.restPage(page, list);
        return result;
    }
}
