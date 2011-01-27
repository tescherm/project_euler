#!/bin/env ruby
#
# Problem 79
#
# Author::    mattt
#
require 'ruby/euler_lib'
require 'open-uri'

adjacency_list = AdjacencyList.new

log = open('http://projecteuler.net/project/keylog.txt'){ |f| f.string }
log_lines = log.split "\n"

log_lines.each { |line|
  digits = line.split ''

  adjacency_list.add_edge(digits[0], digits[1])
  adjacency_list.add_edge(digits[1], digits[2])
}

sorted_verts = adjacency_list.topological_sort()

#73162890
puts sorted_verts.join('')