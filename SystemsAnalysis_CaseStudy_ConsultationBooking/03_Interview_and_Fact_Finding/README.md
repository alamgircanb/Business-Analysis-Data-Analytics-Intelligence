# Deliverable 03 – Interview Documents: Instructor Consultation Booking System

**Author:** Md Alamgir Hossain · October 2026 · *Illustrative case study: Walter Dvorak is the course instructor who acted as stakeholder. The interview answers and all figures here are illustrative examples prepared by the student team, not his actual statements.*

The team gathered requirements with two fact-finding techniques: a 30-minute interview with Walter Dvorak and a short student questionnaire. This deliverable holds the plan, questions, summary and evidence for both. (Illustrative answers.)

## 1. Interview plan

The plan follows the textbook's interview steps (Chapter 4): decide whom to interview, set objectives, write questions, prepare, conduct, document and evaluate.

| Item           | Plan                                                                                                             |
|----------------|------------------------------------------------------------------------------------------------------------------|
| Interviewee    | Walter Dvorak, Instructor BIS                                                        |
| Why him        | He is the system's requestor and main user, and he sees the booking problem every week                           |
| Date and time  | During Systems Analysis and Design class time (date to be confirmed with Walter)                                                    |
| Length         | 30 minutes maximum                                                                                               |
| Location       | Walter's office or the classroom, main campus                                                                  |
| Interview type | Structured with follow-up probes: mostly open-ended questions, plus a few closed and range-of-response questions |

**Objectives**

1.  Understand Walter's responsibilities and the systems he uses.

2.  Document the current booking process and its problems.

3.  Identify must-have and nice-to-have features for an improved system.

4.  Confirm constraints: budget, technology and privacy.

5.  Agree how success will be measured.

**Team roles**

| Role             | Responsibility                                           |
|------------------|----------------------------------------------------------|
| Lead interviewer | Introduces the team, asks the questions, keeps time      |
| Note-taker 1     | Records answers word for word where possible             |
| Note-taker 2     | Records follow-up items and requirements as they come up |
| Timekeeper       | Signals at 20 and 27 minutes                             |

## 2. Interview agenda and questions

**Agenda (30 minutes)**

| Time      | Topic                                                             |
|-----------|-------------------------------------------------------------------|
| 0–3 min   | Introductions, purpose of the interview, permission to take notes |
| 3–10 min  | Responsibilities and current systems (Q1–Q2)                      |
| 10–18 min | Current booking process and problems (Q3–Q5)                      |
| 18–25 min | Requirements, scalability and integration (Q6–Q9, Q11–Q12)        |
| 25–28 min | Success measures (Q10) and anything we missed                     |
| 28–30 min | Summary of key points, next steps, thank you                      |

**Question list**

| \#    | Question                                                                                                          | Type              | Purpose                                        |
|-------|-------------------------------------------------------------------------------------------------------------------|-------------------|------------------------------------------------|
| Q1    | What are your main responsibilities as an instructor?                                                             | Open-ended        | Understand the user's duties                   |
| Q2    | Which systems do you use every day to do your job?                                                                | Open-ended        | Identify current systems and integration needs |
| Q3    | What is your biggest frustration with how students book meetings today?                                           | Open-ended        | Find the core problem                          |
| Q4    | How long is a typical consultation for an individual and for a group?                                             | Closed            | Set slot lengths                               |
| Q5    | When do you usually hold office hours?                                                                            | Closed            | Set default availability                       |
| Q6    | What must an improved system do for you to use it?                                                                | Open-ended        | Must-have requirements                         |
| Q7    | What features would be nice to have but are not essential?                                                        | Open-ended        | Should/could-have requirements                 |
| Q8    | Who should be able to see your meeting notes?                                                                     | Closed            | Privacy and access controls                    |
| Q9    | On a scale of 1 to 5, how tight is the budget, and are there tools you must use?                                  | Range-of-response | Constraints                                    |
| Q10   | How will you know the new system is working?                                                                      | Open-ended        | Success measures                               |
| Q11   | Do you see other instructors or the whole BIS program using a system like this in the future?                  | Open-ended        | Scalability (Ch 4 additional consideration)    |
| Q12   | Which college systems or portals should it connect to, such as the college portal, Brightspace, Outlook or Teams? | Open-ended        | Integration points                             |
| Q13\* | What rules should the system enforce, such as booking limits or a cancel cut-off?                                 | Open-ended        | Processing rules for the design specification  |
| Q14\* | How long should meeting records be kept, and should your Excel notes be moved into the new system?                | Closed            | Data retention and conversion                  |
| Q15\* | When would you want it live, and when would switching be most disruptive?                                         | Open-ended        | Implementation timing                          |

\* Ask Q13–Q15 if time allows; otherwise send them to Walter by email after the interview.

**Follow-up probes (use if time allows):** "Can you give an example?", "How often does that happen?", "What happens if a student misses a meeting?" Avoid leading questions (e.g., not "Wouldn't online booking be better?"), give Walter time to think, and summarize the key points at the end to confirm them.

## 3. Interview summary

Walter confirmed that email booking is the core problem and asked for self-booking, reminders and private notes, all within the college's existing tools.

| Item         | Detail                                      |
|--------------|---------------------------------------------|
| Interviewee  | Walter Dvorak, Instructor BIS            |
| Date         | During Systems Analysis and Design class (to be filled in)     |
| Duration     | 30 minutes                                  |
| Interviewers | Project team (names to be filled in) |

| \#  | Question                                       | Walter's answer (illustrative)                                                                                   |
|-----|------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Q1  | Main responsibilities                          | "Teaching, grading, advising, and supervising group projects across 4–5 sections."                        |
| Q2  | Systems used daily                             | "Brightspace, Outlook, Teams, MindTap and my Excel sheets."                                               |
| Q3  | Biggest frustration                            | "The email back-and-forth just to book a 15-minute meeting."                                              |
| Q4  | Typical meeting length                         | "15 minutes for individuals, 30 minutes for groups."                                                      |
| Q5  | Office hours                                   | "Tuesdays and Thursdays, 1–3 pm. Other times by appointment."                                             |
| Q6  | Must-have features                             | "Show my open slots, let students book and cancel, send reminders, and give me a place for notes."        |
| Q7  | Nice-to-have features                          | "An automatic Teams link, and a way to see all meetings with one group."                                  |
| Q8  | Who sees the notes                             | "Only me. Students only see their own bookings."                                                          |
| Q9  | Budget and tools (1 = no budget, 5 = flexible) | "A 1. It should use what the college already has."                                                        |
| Q10 | Success measures                               | "Fewer emails, fewer no-shows, and I can find any past meeting in seconds."                               |
| Q11 | Future use by others                           | "Possibly. If it works for me, other BIS instructors may want it within a year or two."                |
| Q12 | Systems to connect to                          | "Students should find the link on my Brightspace course page, and it has to work with Outlook and Teams." |

**Key findings**

1.  Scheduling takes 3–4 hours a week at peak times, mostly email back-and-forth.

2.  The paper door sheet and Outlook are not linked, so double-bookings happen.

3.  There are no reminders, and meeting notes are rarely recorded.

4.  Must-haves: open slots, self-booking and cancelling, reminders, private notes.

5.  Constraints: almost no budget; must use Microsoft 365; notes must stay private.

These findings are the "INT-Q" sources in the requirements (Deliverable 05).

## 4. Student questionnaire (second technique)

Thirty students answered a 5-question online questionnaire (Microsoft Forms, illustrative results). It confirms the interview: most students find email booking slow and would self-book online.

| \#  | Question                                                                            | Result (n = 30)                                                      |
|-----|-------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| 1   | Booking a meeting with an instructor by email is slow. (Agree / Neutral / Disagree) | 80% agree, 13% neutral, 7% disagree                                  |
| 2   | Would you prefer to book meetings yourself online? (Yes / No / Not sure)            | 70% yes, 10% no, 20% not sure                                        |
| 3   | Have you ever missed or forgotten a booked meeting? (Yes / No)                      | 60% yes, 40% no                                                      |
| 4   | Which device would you use to book? (Phone / Laptop / Either)                       | 47% phone, 23% laptop, 30% either                                    |
| 5   | What would make booking easier? (open text)                                         | Top answers: see open times (14), reminders (9), easy cancelling (5) |

**What it means for the requirements:** results 1–3 support self-booking and reminders (FR-01, FR-03, FR-06); result 4 means the interface must work well on phones (NFR-07). These are the "QST" sources in Deliverable 05.

**Other fact-finding techniques used or considered (Chapter 4)**

| Technique                    | How it applies here                                                                                                     |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| Document review              | Reviewed sample booking emails, the paper door sheet and Walter's Excel notes template                                  |
| Observation                  | Could observe one office-hours session to see walk-ins and the door sheet in use                                        |
| Sampling                     | The questionnaire used a stratified sample: students from each of Walter's sections                                     |
| Research                     | Compared booking tools (Microsoft Bookings, commercial schedulers) for Deliverable 02                                   |
| Interviews vs questionnaires | The interview gave depth from the main user; the questionnaire gave many students a quick, convenient way to give input |

## 5. Evidence and sign-off

**Interview request email (sent before the interview)**

> **Subject:** course case study – Request for a 30-minute interview
>
> Hello Mr. Dvorak,
>
> Our group is working on course case study and would like to interview you about how you schedule consultations with students. The interview will take no more than 30 minutes and can be held during our class time. Could you let us know which class date works best for you?
>
> Thank you, Md Alamgir Hossain, on behalf of the project team

**Thank-you and confirmation email (sent after the interview)**

> **Subject:** Thank you – interview summary for your review
>
> Hello Mr. Dvorak,
>
> Thank you for meeting with us today. We've attached a summary of your answers and the key findings. Could you please confirm they are accurate, or let us know of any corrections, by \[date\]?
>
> Best regards, Md Alamgir Hossain, on behalf of the project team

**Interview evaluation**

| Question                 | Team's assessment                                                                                    |
|--------------------------|------------------------------------------------------------------------------------------------------|
| Were the objectives met? | Yes. All five objectives were covered within 30 minutes.                                             |
| What worked well?        | Open-ended questions gave rich answers; the agenda kept us on time.                                  |
| What would we improve?   | Ask for real numbers (emails per week, no-show rate) earlier, and bring a sample screen to react to. |
| Follow-up needed         | Confirm the 2-hour cancellation cut-off and whether walk-ins should be recorded.                     |

**Possible bias (Chapter 4: evaluate the interview):** Walter is both the requestor and our instructor, so he may favour solutions that suit his own routine, and we may have avoided challenging his answers. The student questionnaire helps balance this.

**Interviewee sign-off**

| Role             | Name                             | Signature | Date |
|------------------|----------------------------------|-----------|------|
| Interviewee      | Walter Dvorak, Instructor BIS |           |      |
| Lead interviewer | Md Alamgir Hossain               |           |      |

---

[← Back to the case study overview](../README.md)
