class AddSermonsAndSeries < ActiveRecord::Migration
  def change
    add_column :sermon_series, :summary, :text
    add_column :sermons, :sermon_series_id, :integer
    david =  SermonAuthor.create(name: 'David Platt')
    ss = SermonSeries.create({title: 'Different to Make a Difference', summary: "What's really different about those who make up the church? Could you pick them out of a crowd? There's a familiar phrase at our church: “Different to Make a Difference.” What does that mean for us today? In an ever-growing mass of humanity, how will people best see Christ reflected through His church?  We'll explore what God's Word says about a people that were so different they turned the whole world upside down. Find out how today's church can echo and amplify the first century church to impact our world for Christ personally and powerfully."})

    sermons = [{title: 'A Missional Awakening', passage: 'Acts 1-2'},
                {title: 'Speak Boldly, pt. 1', passage: 'Acts 2:14-41'},
                {title: 'Speak Boldly, pt. 2', passage: 'Acts 2:14-41'},
                {title: 'Speak Boldly, pt. 3', passage: 'Acts 2:14-41'},
                {title: 'Care Sacrificially, pt. 1', passage: 'Acts 3'},
                {title: 'Care Sacrificially, pt. 2', passage: 'Acts 2:42-47; 3:32-37'},
                {title: 'Worship Wholeheartedly, pt. 1', passage: 'Luke 22:7-23 Acts 2:42; 1 Corinthians 11:23-32'},
                {title: 'Worship Wholeheartedly, pt. 2', passage: 'Acts 5:1-11'},
                {title: 'Pray Desperately, pt. 1', passage: 'Acts 2:42'},
                {title: 'Pray Desperately, pt. 2', passage: 'Acts 2:42'},
                {title: 'Multiply Exponentially, pt. 1', passage: 'Acts 2:47'},
                {title: 'Multiply Exponentially, pt. 2', passage: 'Acts 2:47'}
    ]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

    ss = SermonSeries.create({title: 'Unstoppable', summary: 'What would happen if the church really took God at His Word? Pastor David Platt takes an in-depth look at that kind of church, from mission and vision to worship, the authority of the Bible and living out our faith through the church practically and every day.'})
      sermons = [
        {title: 'A Christ-Directed Mission', passage: 'Matthew 28:16-20'},
        {title: 'An Awe-Inspired People', passage: 'Isaiah 66'},
        {title: 'An All-Encompassing Vision', passage: 'Romans 1'},
        {title: 'Spirit-Filled Passion', passage: 'Acts 7:54-8:4'},
        {title: 'God-Centered Worship', passage: 'Mark 11:15-19'},
        {title: 'A Death-Defying Savior', passage: 'Revelation 5'},
      ]

    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

    ss = SermonSeries.create({title: 'Radical Restoration', summary: "The church: a beautiful masterpiece of God's craftsmanship. Perfectly created for a divine purpose. Yet somehow along the way we've added a little here, changed a little there. With age and layers of man-made priorities it seems to have lost its luster. Join us as we peel back the caked-on culture to reveal what God intended for His church to be, from the first century to the twenty-first century. Not buildings or business--but a people of passionate commitment. See the beauty of His church, led by Christ at the head, impacting a community and the world for His Kingdom."})
    sermons = [
      {title: 'Outside the Camp', passage: 'Hebrews 13:11-14'},
      {title: 'Christ the Center', passage: 'Matthew 16:13-28'},
      {title: 'The Church’s Identity, Authority, and Purpose', passage: 'Ephesians 1:19-23'},
      {title: 'The Biblical Marks of a Local Church', passage: 'Ephesians 4:7-16'},
      {title: 'Elders: Servant Leaders of the Church', passage: 'Acts 20:17-31'},
      {title: 'Deacons: Leading Servants in the Church; Acts 6:1-7', passage: '1 Timothy 3:8-13'},
    ]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

    ss = SermonSeries.create({title: 'Foretold', summary: "Journey through the Old Testament to see how Christ's coming is foretold from Genesis to Isaiah to Deuteronomy to Ezekiel. This three-message series will give you a great context for the events of around the birth of Christ as you move into the Christmas season each year."})
    sermons = [
      {title: 'Proto-Euangelion: The First Gospel', passage: 'Genesis 3:1-24'},
      {title: 'God and the Destitute', passage: 'Ruth'},
      {title: 'The Success of Servant Leaders', passage: 'Nehemiah 1'},
    ]

    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

    ss = SermonSeries.create({title: 'Incarnation: The Mystery of Christmas', summary: "Incarnation means becoming human. What did it mean, really, for Jesus Christ, God's Son, to become a man? We have a Lord and Savior who is a marvel of nature, a wonder of grace, the hope of glory and Lord of all. This is the real story of Christmas!"})
		sermons = [
{title: 'Hope of Glory', passage: 'Philippians 2:5-6'},
{title: 'Marvel of Nature', passage: 'Philippians 2:7'},
{title: 'Wonder of Grace', passage: 'Philippians 2:8'},
{title: 'Lord of All', passage: 'Philippians 2:9-11'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create(title: 'Follow Me', summary: "Learn what 'disciple-making' means as Matthew 4:13 becomes the launching point. Jesus taught the disciples to share the Word, show the Word, teach the Word and serve the World. Two simple words, but a lifetime of modeling the Person of Christ. ")
		sermons = [
{title: 'Two Simple Words: Follow Me', passage: 'Matthew 4:18-22'},
{title: 'Share the Word', passage: 'John 17:1-8'},
{title: 'Show the Word', passage: 'John 17:1-8'},
{title: 'Teach the Word', passage: 'John 17:1-8'},
{title: 'Serve the World', passage: 'John 17:17-26'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Awaken: Crucial Concepts for Biblical Worship', summary: "Many Christians only associate the word worship with musical styles and preferences. However, Scripture gives us a different set of priorities when it comes to the way we respond to God. In this series we’ll look at what it means to worship God rightly, both as individuals and in our corporate gatherings. [Tags: Worship]"})
		sermons = [
{title: 'Community', passage: 'Nehemiah 12:27-47'},
{title: 'Humility', passage: 'Revelation 19:1-10'},
{title: 'Honesty', passage: 'John 4:15-26'},
{title: 'Clarity', passage: 'Psalm 19'},
{title: 'Diversity', passage: 'Revelation 7:9-17'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Cross Culture', summary: "The power of the Gospel lies in part that it is truly cross-cultural. As we learn to share our faith, we can follow God's Word to learn how the Gospel applies to any culture, anywhere. Though many of the world's cultures can be described as fear based, shame based or guilt based, they all have one thing in common — an answer in Scripture to the problem of sin through the person of Christ. [Tags: Culture; The Gospel]"})
		sermons = [
{title: 'God’s Story, Our Story', passage: 'Genesis 3'},
{title: 'God’s Work, Our Work', passage: 'John 5:17-20'},
{title: 'God’s Story in a Guilt-Based Culture', passage: 'Romans 8:1'},
{title: 'God’s Story in a Fear-Based Culture', passage: '1 John 4:18'},
{title: 'God’s Story in a Shame-Based Culture', passage: 'Luke 4:18-19'},
{title: 'God’s Power, Our Power', passage: 'Luke 24:45-53'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Lifeline: Power through Prayer', summary: "When the disciples asked Jesus to teach them something, they asked how to pray. Jesus responded not with a five-point lecture on prayer. Instead, He prayed. As we study the Bible on prayer, we find a powerful tool for communicating with God that goes far beyond 'asking for a list of stuff.' It's the key to a deeper, more intimate relationship with Christ for every believer."})
		sermons = [
{title: 'Desperation: Do We Need Him?', passage: 'Luke 11:1'},
{title: 'Desire: Do We Want Him?', passage: 'Luke 11:2-4'},
{title: 'Boldness: Will We Seek Him?', passage: 'Luke 11:5-10'},
{title: 'Confidence: Will We Trust Him?', passage: 'Luke 11:11-13'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end


ss = SermonSeries.create({title: 'Engage', summary: "Jesus spent more time with 12 men than He did with everyone else in the world put together. As we look throughout the New Testament we see small groups of believers everywhere. Understand why building small groups of believers is important and biblical, and how we can begin to model the small nature of the church in a big way. Take a tour of the New Testament church with David Platt as he presents the teaching series. [Tags: Small Groups; Community; Fellowship]"})
		sermons = [
{title: 'Engage in Christ', passage: 'John 17:20-26'},
{title: 'Engage in Care', passage: '2 Corinthians 1:3-11'},
{title: 'Engage in Community', passage: 'Romans 12'},
{title: 'Engage in Calling', passage: 'Romans 12:3-8'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Abide', summary: "If you’re a disciple of Jesus, then your abiding in Christ and His abiding in you defines everything about who you. In this series we’ll see how the disciple’s mission, mind, emotions, body, will, and relationships are affected by his or her relationship to Jesus. Understanding our identity in Christ is crucial as we seek to follow him faithfully. [Tags: Discipleship; Sanctification; Identity]"})
		sermons = [
{title: 'The Disciple’s Identity, pt. 1: You in Christ', passage: 'Matthew 11:28-30'},
{title: 'The Disciple’s Identity, pt. 2: Christ in You', passage: 'Colossians 1:24-29'},
{title: 'The Disciple’s Mission', passage: 'Matthew 9:35-10:4'},
{title: 'The Disciple’s Mind', passage: 'Romans 12:2'},
{title: 'The Disciple’s Emotions', passage: 'John 6:25-35'},
{title: 'The Disciple’s Body', passage: '1 Corinthians 6:12-20'},
{title: 'The Disciple’s Will', passage: 'Galatians 2:20'},
{title: 'The Disciple’s Relationships', passage: 'Colossians 3:1-4:1'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Global Summit 2007', summary: "This four-part series includes sermons and interviews centered around Christ's command to the church to make disciples of all nations. David Platt lays out a vision for the Church at Brook Hills. [Tags: Missions]"})
		sermons = [
{title: 'A Mission Only the Church Can Stop', passage: 'Acts 21'},
{title: 'Creating the Future', passage: 'Hebrews 12'},
{title: 'To Look After', passage: 'James 1:27'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: '3:16', summary: "Why did God send His Son to Earth?  As Dr. Platt recounted when traveling abroad sharing the Gospel in other cultural contexts, “In matters of love, one must go himself…” There was no other way, no substitute, no proxy that could fully convey the message of Christ except for Christ Himself.  [Tag: the Gospel]"})
		sermons = [
{title: 'Love that Captivates', passage: 'John 3:16'},
{title: 'Love that Gives', passage: 'Genesis 22'},
{title: 'Love that Costs', passage: 'John 3:14-16'},
{title: 'Love that Lasts', passage: 'John 3:16'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end


ss = SermonSeries.create({title: 'Part 1: Redemption Promised to a Covenant People', summary: "God’s plan of redemption begins to take shape as He calls Abraham to be the father of His covenant people, Israel, as well as a blessing to the nations. In the midst of pain and trials, God makes Himself known to Israel through His law, His presence, and His miraculous rescue through the Red Sea. The faith of Abraham still serves as the pattern for Christians today, for our salvation comes through trusting in Abraham’s seed—the Lord Jesus Christ."})
		sermons = [
{title: 'Ch. 1: Believing in God', passage: 'Genesis 12:1-9; 15; 17:1-14' },
{title: 'Ch. 2: Pain and Providence', passage: 'Genesis 37, 50'},
{title: 'Ch. 3: Holy, Hurting, Hoping, Healed', passage: 'Job 1-3; 19:25-27'},
{title: 'Ch. 4: Yahweh', passage: 'Exodus 3'},
{title: 'Ch. 5: Blood that Satisfies', passage: 'Exodus 12'},
{title: 'Ch. 6: Where Glory Dwells', passage: 'Exodus 33'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Part 2: The Law of the Land', summary: "It quickly becomes clear that Israel will have trouble obeying the law God has given them. They will need atonement for their sins, as well as a courageous faith to take hold of God’s promises. However, despite Israel’s disobedience and rebellion, God sustains them through His redeeming love."})
		sermons = [
{title: 'Ch. 7: The Wonder of Atonement', passage: 'Leveticus 16'},
{title: 'Ch. 8: Fear or Faith', passage: 'Numbers 13-14'},
{title: 'Ch. 9: Love God, Love People', passage: 'Deuteronomy 6'},
{title: 'Ch. 10: Courage that Conquers', passage: 'Joshua 1:1-9'},
{title: 'Ch. 11: Depravity and Deliverance', passage: 'Judges 2:10-23'},
{title: 'Ch. 12: Story of Love', passage: 'Ruth 3:9, Ephesians 1:7-8'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Part 3: Failed Kings in a United Kingdom', summary: "Now that the people of God have settled into the Promised Land, we find them in search of a king. This era of redemptive history gives us an up close and personal look into the three major kings of Israel: Saul, David, and Solomon. During Israel’s journey under their leadership, we see both highs and lows in the history of God’s people. Through it all, though, we discover in an even deeper way our need for a new and perfect King to come and reign over the people of God. Failed kings in the united kingdom of Israel leave us longing for the supreme King who will come to rule and reign over all nations."})
		sermons = [
{title: 'Ch. 13: The Improbable Champion', passage: '1 Samuel 17'},
{title: 'Ch. 14: This One Thing', passage: 'Psalm 27'},
{title: 'Ch. 15: Father to the Fatherless', passage: 'Psalm 10'},
{title: 'Ch. 16: Shepherd Who Satisfies', passage: 'Psalm 23'},
{title: 'Ch. 17: The Promise of a Kingdom', passage: '2 Samuel 7'},
{title: 'Ch. 18: Giving in the History of Redemption', passage: '1 Chronicles 29, 2 Chronicles 1'},
{title: 'Ch. 19: Sex in Salvation History', passage: 'Song of Songs'},
{title: 'Ch. 20: Walking in Wisdom', passage: 'Proverbs'},
{title: 'Ch. 21: Extravagant Worship', passage: '1 Kings 8'},
{title: 'Ch. 22: Vanity and the Divine Design', passage: 'Ecclesiastes'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Part 4: Faithful Prophets in a Divided Kingdom', summary: "As the people of God are divided into a northern kingdom (Israel) and a southern kingdom (Judah), we see a variety of kings, most of whom are evil and turn their hearts and the hearts of the people away from God. Meanwhile, God raises up prophets to speak on His behalf to His people. These prophets are messengers of God empowered by the Spirit of God to bring messages of judgment, hope, guidance, and warning. In Part 4 of the Chronicles of Redemption: Faithful Prophets in a Divided Kingdom, we will see how these warnings apply even to the people of God today, and we will discover how these prophets anticipate the coming of Christ, who is ultimately our great prophet, priest, and king."})
		sermons = [
{title: 'Ch. 23: Christ Our Prophet; 1 Kings 17-22', passage: '2 Kings 1-2'},
{title: 'Ch. 24: Fish Food', passage: 'Jonah'},
{title: 'Ch. 25: Unwavering Holiness and Unrelenting Love; Amos', passage: 'Hosea'},
{title: 'Ch. 26: Sinful People and a Shepherd King', passage: 'Micah'},
{title: 'Ch. 27: Hope in God', passage: 'Isaiah'},
{title: 'Ch. 28: The Scandal of the Gospel', passage: 'Isaiah 52:13-53:12'},
{title: 'Ch. 29: The Divine Warrior', passage: 'Nahum'},
{title: 'Ch. 30: Repenting of Sin and Returning to God', passage: 'Joel'},
{title: 'Ch. 31: The New Covenant in the Old Testament', passage: 'Jeremiah 31:31-40'},
{title: 'Ch. 32: Questioning God', passage: 'Habakkuk'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Part 5: Faint Hope for a Devastated Kingdom'})
		sermons = [
{title: 'Ch. 33: Trusting God, Confessing Sin and Banking on Mercy', passage: 'Lamentations'},
{title: 'Ch. 34: Our God-Centered God', passage: 'Ezekiel'},
{title: 'Ch. 35: The God-Centered Life', passage: 'Daniel'},
{title: 'Ch. 36: Christ Our Priest and King', passage: 'Zechariah Haggai'},
{title: 'Ch. 37: The Sin of Man and the Silence of God', passage: 'Malachi'},
]
   sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end


ss = SermonSeries.create({title: 'Part 6: The Redeemer Is Here'})

		sermons = [
{title: 'Ch. 38: The Son of God and the Submission of Man', passage: 'Matthew'},
{title: 'Ch. 39: The Eternal Ramifications of Exceeding Righteousness', passage: 'Matthew 5-7'},
{title: 'Ch. 40: The All-Satisfying Christ', passage: 'John 6:25-71'},
{title: 'Ch. 41: The Light of the World', passage: 'John 8'},
{title: 'Ch. 42: A Fast for the Nations', passage: 'Mark 11:15-19'},
{title: 'Ch. 43: Redeemed for a Reason', passage: 'Luke 23-24'},
]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end

ss = SermonSeries.create({title: 'Part 7: Redemption Proclaimed by a New Covenant People'})
		sermons = [
    {title: 'Ch. 44: The Church for the Nations', passage: 'Acts'},
    {title: 'Ch. 45: A Coming King and His Confident Church', passage: '1 Thessalonians 4:13-18'},
    {title: 'Ch. 46: The Cross-Centered Life', passage: '1 Corinthians 1:18-2:16'},
    {title: 'Ch. 47: The Marvel of God’s Mercy', passage: 'Romans 9'},
    {title: 'Ch. 48: The Mystery of Christmas', passage: 'Colossians 2:5-11'},
    {title: 'Ch. 49: Not By Bread Alone', passage: '2 Timothy 3:14-17'},
    ]
    sermons.each do |sermon|
      Sermon.create(sermon_author_id: david.id, title: sermon[:title], passage: sermon[:passage], sermon_series_id: ss.id)
    end
  end
end
