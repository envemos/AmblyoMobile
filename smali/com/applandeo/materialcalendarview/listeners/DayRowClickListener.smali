.class public Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;
.super Ljava/lang/Object;
.source "DayRowClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

.field private mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

.field private mPageMonth:I


# direct methods
.method public static synthetic $r8$lambda$RrJqji5I4mSjhjn2fWccnjPFXTM(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->reverseUnselectedColor(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lF5IWkGF3PhcBrPhKMeCUivrJNA(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;Lcom/applandeo/materialcalendarview/EventDay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->callOnClickListener(Lcom/applandeo/materialcalendarview/EventDay;)V

    return-void
.end method

.method public constructor <init>(Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    .line 38
    iput-object p2, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    if-gez p3, :cond_0

    const/16 p3, 0xb

    .line 39
    :cond_0
    iput p3, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mPageMonth:I

    return-void
.end method

.method private callOnClickListener(Lcom/applandeo/materialcalendarview/EventDay;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDisabledDays()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/EventDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/EventDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isBetweenMinAndMax(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 185
    :goto_1
    invoke-virtual {p1, v0}, Lcom/applandeo/materialcalendarview/EventDay;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnDayClickListener()Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;->onDayClick(Lcom/applandeo/materialcalendarview/EventDay;)V

    return-void
.end method

.method private clearAndSelectOne(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda1;-><init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;)V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->forEach(Lcom/annimon/stream/function/Consumer;)V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->selectDay(Landroid/widget/TextView;Ljava/util/Calendar;)V

    return-void
.end method

.method private createEmptyEventDay(Ljava/util/Calendar;)V
    .locals 1

    .line 177
    new-instance v0, Lcom/applandeo/materialcalendarview/EventDay;

    invoke-direct {v0, p1}, Lcom/applandeo/materialcalendarview/EventDay;-><init>(Ljava/util/Calendar;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->callOnClickListener(Lcom/applandeo/materialcalendarview/EventDay;)V

    return-void
.end method

.method private isActiveDay(Ljava/util/Calendar;)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDisabledDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isAnotherDaySelected(Lcom/applandeo/materialcalendarview/utils/SelectedDay;Ljava/util/Calendar;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 161
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isCurrentMonthDay(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isActiveDay(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isBetweenMinAndMax(Ljava/util/Calendar;)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 156
    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isCurrentMonthDay(Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x2

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mPageMonth:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isBetweenMinAndMax(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$onClick$2(Ljava/util/Calendar;Lcom/applandeo/materialcalendarview/EventDay;)Z
    .locals 0

    .line 171
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/EventDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onClick(Ljava/util/Calendar;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getEventDays()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->createEmptyEventDay(Ljava/util/Calendar;)V

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getEventDays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda4;-><init>(Ljava/util/Calendar;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->findFirst()Lcom/annimon/stream/Optional;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda0;-><init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;)V

    new-instance v2, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda5;-><init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;Ljava/util/Calendar;)V

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/annimon/stream/Optional;->ifPresentOrElse(Lcom/annimon/stream/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method private reverseUnselectedColor(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V
    .locals 3

    .line 142
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 142
    invoke-static {v0, v1, p1, v2}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setCurrentMonthDayColors(Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    return-void
.end method

.method private selectDay(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setSelectedDayColors(Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    .line 138
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    new-instance v1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {v1, p1, p2}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Landroid/view/View;Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->setSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    return-void
.end method

.method private selectManyDays(Landroid/view/View;Ljava/util/Calendar;)V
    .locals 1

    .line 81
    sget v0, Lcom/applandeo/materialcalendarview/R$id;->dayLabel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 83
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isCurrentMonthDay(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isActiveDay(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {v0, p1, p2}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Landroid/view/View;Ljava/util/Calendar;)V

    .line 86
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDays()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-static {p1, p2}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setSelectedDayColors(Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, v0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->reverseUnselectedColor(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {p1, v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->addSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    :cond_1
    return-void
.end method

.method private selectOneAndRange(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDay()Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/applandeo/materialcalendarview/CalendarUtils;->getDatesRange(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda3;-><init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;)V

    .line 127
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda2;-><init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->forEach(Lcom/annimon/stream/function/Consumer;)V

    .line 130
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setSelectedDayColors(Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    .line 132
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    new-instance v1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {v1, p1, p2}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Landroid/view/View;Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->addSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    .line 133
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private selectOneDay(Landroid/view/View;Ljava/util/Calendar;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDay()Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    move-result-object v0

    .line 72
    sget v1, Lcom/applandeo/materialcalendarview/R$id;->dayLabel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 74
    invoke-direct {p0, v0, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isAnotherDaySelected(Lcom/applandeo/materialcalendarview/utils/SelectedDay;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->selectDay(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->reverseUnselectedColor(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    :cond_0
    return-void
.end method

.method private selectRange(Landroid/view/View;Ljava/util/Calendar;)V
    .locals 3

    .line 97
    sget v0, Lcom/applandeo/materialcalendarview/R$id;->dayLabel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 99
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isCurrentMonthDay(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->isActiveDay(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->clearAndSelectOne(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 109
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->selectOneAndRange(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 113
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->selectDay(Landroid/widget/TextView;Ljava/util/Calendar;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$3$com-applandeo-materialcalendarview-listeners-DayRowClickListener(Ljava/util/Calendar;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->createEmptyEventDay(Ljava/util/Calendar;)V

    return-void
.end method

.method synthetic lambda$selectOneAndRange$0$com-applandeo-materialcalendarview-listeners-DayRowClickListener(Ljava/util/Calendar;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDisabledDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method synthetic lambda$selectOneAndRange$1$com-applandeo-materialcalendarview-listeners-DayRowClickListener(Ljava/util/Calendar;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    new-instance v1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {v1, p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->addSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 44
    new-instance p4, Ljava/util/GregorianCalendar;

    invoke-direct {p4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 45
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 47
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnDayClickListener()Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0, p4}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->onClick(Ljava/util/Calendar;)V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getCalendarType()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->selectRange(Landroid/view/View;Ljava/util/Calendar;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->selectManyDays(Landroid/view/View;Ljava/util/Calendar;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->selectOneDay(Landroid/view/View;Ljava/util/Calendar;)V

    goto :goto_0

    .line 65
    :cond_4
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    new-instance p3, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {p3, p2, p4}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Landroid/view/View;Ljava/util/Calendar;)V

    invoke-virtual {p1, p3}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->setSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    :goto_0
    return-void
.end method
