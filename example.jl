function generateCS(x)      #Creates randomized students with favorite programming lang, year, and hours taken this semester
    student = []
    while x > 0
        push!(student, [programming_langs[rand(1:5)], school_years[(rand(1:4))],rand(12:18)])
        x = x - 1
    end
    student
end

mean(lst) = sum(lst) / length(lst)  #mean function

programming_langs = ["rust", "julia", "python", "c", "scala"]
school_years = ["Senior", "Junior", "Sophmore", "Freshman"]

hours(people) = people[3]

isSenior(people) = people[2]== "Senior"
isJunior(people) = people[2]== "Junior"
isSophmore(people) = people[2]== "Sophmore"
isFreshman(people) = people[2]== "Freshman"

isRust(people) = people[1] == "rust"

people = generateCS(100)
println(sum(isRust,people), " Total rustaceans")
println(sum(isRust, filter(isSenior,people)), " Seniors")
println(sum(isRust, filter(isJunior,people)), " Juniors")
println(sum(isRust, filter(isSophmore,people)), " Sophmores")
println(sum(isRust, filter(isFreshman,people)), " Freshman")

println("Rustaceans average ", mean(map(hours, filter(isRust,people))), " hours of class in this semester!")   
        