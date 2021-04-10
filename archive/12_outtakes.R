
# Risk of Death



```{r, mort_fig, echo=F,  fig.height=6,fig.width=8}
#  Hospital Mortality
library(ggplot2)
df<-data.frame(mortality=c(.102,.067,.039),strength=c("Low (<5)","Middle (5-20)","High (>20)"),mortality_labels =c("10.2%\nLow\nVolume","6.7%\nMiddle","3.9%\nHigh"))
strengths=c("Low (<5)","Middle (5-20)","High (>20)")
p<-ggplot(data=df, aes(x=strength,y=mortality))+
  geom_bar(stat="identity", fill="steelblue")+scale_x_discrete(limits=strengths)+scale_y_continuous(labels = scales::percent_format(accuracy=1)) +
  geom_text(aes(label=mortality_labels),vjust=1.4, color="white",size=13.5)+
  theme_minimal()+
  theme( axis.text=element_text(size=12,face="bold"),axis.title=element_text(size=14, face="bold"),plot.title = element_text(hjust=0.5,face="bold",size=16)) +
  ggtitle("Hospital Mortality after Esophagectomy") +
  labs(y="Percent Mortality",x="Hospital Operations per year")
p

```

---
  
  <small>The risk of death after esophagectomy is about twice as high in hospitals which perform less than 5 esophagectomy operations per year.</small>
  
  
  ```{r, mort_fig2, echo=F, fig.height=6, fig.width=8, include=T}
library(ggplot2)
df<-data.frame(mortality=c(.102,.067,.039),strength=c("Low (<5)","Middle (5-20)","High (>20)"))
strengths=c("Low (<5)","Middle (5-20)","High (>20)")
p<-ggplot(data=df, aes(x=strength,y=mortality))+
  geom_bar(stat="identity", fill="steelblue")+scale_x_discrete(limits=strengths)+scale_y_continuous(labels = scales::percent_format(accuracy=1)) +theme_minimal() + theme( axis.text=element_text(size=20,face="bold"),axis.title=element_text(size=20, face="bold"),plot.title = element_text(hjust=0.5,face="bold",size=20)) +
  ggtitle("Hospital Mortality after Esophagectomy") +
  labs(y="Percent Mortality",x="Hospital Operations per year")
p

#ggsave("hosp_mort.png",device="png",path="images/")

```
---
  
  
  # Understanding Outcomes
  
  Let's talk Baseball for a minute.  Micky Mantle is regarded as one of baseball's greats, and this baseball card from 1952 is one of the most valuable in history.

If you look at the back of his card, you'll find lost of statistics, including his batting average. The numbers are there for anyone to see, including his batting average. If you're a baseball fan, one of the ways you evaluate players is based upon their statistics.

Unfortunately, there aren't baseball cards for hospitals and surgeons, and finding the statistics for a hospital or surgeon can be a challenge, but it's still important if you want the best chance for a good outcome after surgery.

---
  
  # Hospital Volume
  
  <small>Practice makes perfect in many things in life, and esophageal surgery is no exception.</small>
  
  Hospitals where an esophagectomy is performed more frequently in general have better outcomes than hospitals where the operation is only occasionally done. 

---
  
  This chart shows the relationship between hospital volume and the risk of death after esophagectomy.


---
  
  # Finding a Hospital
  
  The easiest way to find out whether a particular hospital is high volume or low volume is to ask your surgeon. 

Another method is to do some research on the internet. The Leapfrog Group is a non-profit organization that collects and published safety in healthcare. Their website ranks hospitals for safety and can help you find a high-volume hospital.  A link to their website is available here: [HospitalSafetyGrade.org](https://www.hospitalsafetygrade.org)

---
  
  # Leapfrog Group Website
  
  You can search on a hospital. Once there, click "View this hospital's leapfrog Hospital Survey Results"

Of course there are low-volume hospital that have good outcomes, but starting with a high-volume hospital is a place to start.

---
  
  The Leapfrog Group 

# Choosing a Surgeon

The surgeon is another key factor in the outcome of an operation.  The Leapfrog recommends a minimum of seven operations per year for surgeons undertaking esophagectomy.

The surgeon's track record of outcomes is also an extremely helpful way to predict outcomes.  Finding out this information may require some uncomfortable questions, but this is important information.  It is critical to know both what the track record of the hospital is, but also the track record of a particular surgeon.

---

# Your Surgeon's Outcomes

Knowing your surgeon's outcomes is important, but knowing your surgeon's outcomes is probably more important.  Your surgeon should be able to tell you what their statistics are for outcomes like anastomotic leak, pneumonia, and death after surgery.

If you surgeon doesn't know their personal statistics, you may want to look for a second opinion.  After all, if you met a professional baseball player, you would expect that they would be familiar with their batting average. 

---

# Questions for Your Surgeon

1) How many esophagectomy operations are performed each year in your hospital?
2) How many esophagectomy operations do you perform personally each year?
3) What are your overall rates of complications?
  - Pneumonia
  - Anastomotic Leak
  - Death in the first 90 days after surgery
  
---






# High risk vs low risk


Auto safety has improved over the years, and fatal auto accidents are quite rate.  
Average driver has a risk of fatal auto accident of 2.1 per 100 million miles driven

```{r, fatalauto_fig2, echo=F,  fig.height=3,fig.width=5}
library(ggplot2)
df1<-data.frame(autofatal=c(0,2.1,0),agegroup=c("","Overall",""),autofatal_labels =c("","2.1",""))
agegroups=c("","Overall","")
p<-ggplot(data=df1, aes(x=agegroups,y=autofatal))+
  geom_bar(stat="identity", fill="steelblue")+scale_x_discrete(limits=agegroups) +
        geom_text(aes(label=autofatal_labels),vjust=1.4, color="white",size=13.5)+
  theme_minimal()+
  ylim(0,6.5) +
  theme( axis.text=element_text(size=20,face="bold"),axis.title.x=element_text(size=22, face="bold"),axis.title.y=element_text(size=18, face="bold"),plot.title = element_text(hjust=0.5,face="bold",size=18)) +
  ggtitle("Risk of Fatal Auto Accidents") +
  labs(y="Deaths per 100,000,000 miles",x=" ") 
p
```
---

But we know from our own experience that some drivers are at at higher risk than others.

For instance, what about these two drivers?

.pull-left[<img src="images/driving-407181_1920.jpg" width="100%" height = "100%">]
.pull-right[<img src="images/woman-289315_1920.jpg" width="100%" height = "100%">]

---

Even if you didn't know these two individuals, you would guess that a man in his 20s has a higher risk of a fatal auto acccident than a women in her 30s.

Statistically, this is true.



---
  
  
  While the overall rate is 2.1 deaths, the rate for men in their 20s is six times higher than women in their 30s

```{r, fatalauto2_fig, echo=F,  fig.height=6,fig.width=8}
library(ggplot2)
df1<-data.frame(autofatal=c(6.4,2.1,1.1),agegroup=c("Men 20-30","Overall","Women 30-40"),autofatal_labels =c("6.4","2.1","1.1"))
agegroups=c("Men age 20-30","Overall","Women age 30-40")
p<-ggplot(data=df1, aes(x=agegroups,y=autofatal))+
  geom_bar(stat="identity", fill="steelblue")+scale_x_discrete(limits=agegroups) +
  geom_text(aes(label=autofatal_labels),vjust=1.4, color="white",size=13.5)+
  theme_minimal()+
  ylim(0,6.5) +
  theme( axis.text=element_text(size=20,face="bold"),axis.title.x=element_text(size=22, face="bold"),axis.title.y=element_text(size=18, face="bold"),plot.title = element_text(hjust=0.5,face="bold",size=18)) +
  ggtitle("Risk of Fatal Auto Accidents") +
  labs(y="Deaths per 100,000,000 miles",x="") 
p
```

---
  
  Now the auto insurance companies have noticed that young men are in a high risk group, and women are in a good risk group.  Anyone who has had to pay for auto insurance for a young man understands this.


---
  
  ```{r, pneumonia_figoverall_big, echo=F,  fig.height=6,fig.width=8, warning=F, message=F}
library(ggplot2)


data <- data.frame(
  quarter=c("", "", "Q2", "Q2", "", ""),
  product=c("Pneumonia", "None", "Pneumonia", "None", "Pneumonia", "None"),
  profit=c(0, 0, 10, 90, 0, 0 )
)
#ggplot(data, aes(x = quarter, y = profit, fill = product)) +
#  geom_col()


df1<-data.frame(pneumonia=c(0,0,0.9,0.10,0,0),strength=c("","","Average","Average","",""),pneumonia_labels =c("","10%",""))
strengths=c("","","Average","Average","","")
group_widths=c(25,25,50)
p<-ggplot(data=df1, aes(x=strength,y=pneumonia))+
  geom_bar(stat="identity", fill="steelblue")+scale_x_discrete(limits=strengths)+scale_y_continuous(labels = scales::percent_format(accuracy=1),limits=c(0,.2)) +
  geom_text(aes(label=pneumonia_labels),vjust=1.4, color="white",size=13.5)+
  theme_minimal()+
  theme( axis.text=element_text(size=20,face="bold"),axis.title.x=element_text(size=20, face="bold"),axis.title.y=element_text(size=20, face="bold"),plot.title = element_text(hjust=0.5,face="bold",size=24)) +
  ggtitle("Risk of Pneumonia after Esophagectomy") +
  labs(y="Percent With Pneumonia",x="Risk Group") 
p
```




```{r}
library(tidyverse)
Ancestry <- data.frame(Race = c("None", "Pneumonia"), 
                       Proportion = c(90,10))

Ancestry <- Ancestry %>% 
  mutate(Year = "2006")

ggplot(Ancestry, aes(x = Year, y = Proportion, fill = Race)) +
  geom_col() +
  geom_text(aes(label = paste0(Proportion, "%")),
            position = position_stack(vjust = 0.5)) +
  scale_fill_brewer(palette = "Set2") +
  theme_minimal(base_size = 16) +
  ylab("Percentage") +
  xlab(NULL)

```




```{r fig.height=6, fig.width=8, message=FALSE, warning=FALSE, pneumonia_fig1, echo=F, message=F}
library(ggplot2)
df1<-data.frame(pneumonia=c(0.20,0.10,0.05),strength=c("High","Average","Good"),pneumonia_labels =c("20%\nHigh\nRisk","10%\nAverage","5%\nGood"))
strengths=c("High","Average","Good")
group_widths=c(25,25,50)
p<-ggplot(data=df1, aes(x=strength,y=pneumonia))+
  geom_bar(stat="identity", fill="steelblue")+scale_x_discrete(limits=strengths)+scale_y_continuous(labels = scales::percent_format(accuracy=1)) +
  geom_text(aes(label=pneumonia_labels),vjust=1.4, color="white",size=12)+
  theme_minimal()+
  theme( axis.text=element_text(size=20,face="bold"),axis.title.x=element_text(size=20, face="bold"),axis.title.y=element_text(size=20, face="bold"),plot.title = element_text(hjust=0.5,face="bold",size=24)) +
  ggtitle("Risk of Pneumonia after Esophagectomy") +
  labs(y="Percent With Pneumonia",x="Risk Group") 
p
```
---
  
  
  
  
  
  ```{r fig.height=6, fig.width=8, message=FALSE, warning=FALSE, pneumonia_fig2a, echo=F}
library(ggplot2)
df1<-data.frame(pneumonia=c(0.20,0.10,0.05),strength=c("High","Average","Good"),pneumonia_labels =c("20%\nPoor\nRisk","10%\nAverage","5%\nGood"))
strengths=c("High","Average","Good")
group_widths=c(25,25,50)
p<-ggplot(data=df1, aes(x=strength,y=pneumonia))+
  geom_bar(stat="identity", fill=c("#B81D13","#EFB700","#008450"))+scale_x_discrete(limits=strengths)+scale_y_continuous(labels = scales::percent_format(accuracy=1)) +
  geom_text(aes(label=pneumonia_labels),vjust=1.4, color="white",size=12)+
  theme_minimal()+
  theme( axis.text=element_text(size=20,face="bold"),axis.title.x=element_text(size=20, face="bold"),axis.title.y=element_text(size=20, face="bold"),plot.title = element_text(hjust=0.5,face="bold",size=24)) +
  ggtitle("Risk of Pneumonia after Esophagectomy") +
  labs(y="Percent With Pneumonia",x="Risk Group") 
p
```



```{r, strength_fig3, echo=F,  fig.height=6,fig.width=8}
library(ggplot2)
df1<-data.frame(mortality=c(0.0,0.033,0.000),strength=c("High","Average","Good"),mortality_labels =c("10%\nHigh\nRisk","3.3%\nAverage","0.0%\nGood"))
strengths=c( "","Average","Average")
p<-ggplot(data=df1, aes(x=strength,y=mortality))+
  geom_bar(stat="identity", fill="steelblue")+scale_x_discrete(limits=strengths)+scale_y_continuous(labels = scales::percent_format(accuracy=1),limits=c(0,.1)) +
  geom_text(aes(label=mortality_labels),vjust=1.1, color="white",size=12)+
  theme_minimal()+
  theme( axis.text=element_text(size=20,face="bold"),axis.title=element_text(size=20, face="bold"),plot.title = element_text(hjust=0.05,face="bold",size=20)) +
  ggtitle("Mortality after Esophagectomy (90 Days)") +
  labs(y="Percent Mortality",x="Risk Group") 
p
```




```{r, echo=F, warning =F, message=F}
df2<-data.frame(pneumonia=c(0.05,0.95,0.10,0.9,0.2,0.8),strength=c("Good","Good","Average","Average","Poor","Poor"), Outcome=c("Pneumonia", "No Pneumonia","Pneumonia", "No Pneumonia" ,"Pneumonia","No Pneumonia"),pneumonia_labels=c("5%","","10%","", "20%",""),ordering=c(5,5,2,2,1,1))
#group_widths=c(25,25,50)
p<-ggplot(data=df2, aes(x=reorder(strength,ordering),y=pneumonia, fill=Outcome))+
  geom_bar(stat="identity", color="black")+scale_y_continuous(labels = scales::percent_format(accuracy=1),limits=c(0,1)) +
  geom_text(aes(label=pneumonia_labels),vjust=-1, color="black",size=12)+
  theme_minimal()+
  theme( axis.text=element_text(size=20,face="bold"),axis.title.x=element_text(size=20, face="bold"),axis.title.y=element_text(size=20, face="bold"),plot.title = element_text(hjust=0.7,face="bold",size=24)) +
  ggtitle("Risk of Pneumonia") +
  labs(y="",x="Risk Group") +
  scale_fill_manual(values=c("white","steelblue"))+
  scale_color_manual(values=c("black","black","black"))
p
```