.class Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CalendarDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

.field private mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPageMonth:I

.field private mToday:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;",
            "Landroid/content/Context;",
            "Lcom/applandeo/materialcalendarview/utils/CalendarProperties;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;I)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p3}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getItemLayoutResource()I

    move-result v0

    invoke-direct {p0, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    invoke-static {}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mToday:Ljava/util/Calendar;

    .line 44
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    .line 45
    iput-object p3, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    if-gez p5, :cond_0

    const/16 p5, 0xb

    .line 46
    :cond_0
    iput p5, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mPageMonth:I

    .line 47
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private isActiveDay(Ljava/util/Calendar;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDisabledDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isCurrentMonthDay(Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x2

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mPageMonth:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 110
    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 111
    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSelectedDay(Ljava/util/Calendar;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getCalendarType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mPageMonth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    .line 105
    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {v1, p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Ljava/util/Calendar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$loadIcon$2(Ljava/util/Calendar;Lcom/applandeo/materialcalendarview/EventDay;)Z
    .locals 0

    .line 125
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/EventDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setLabelColors$0(Ljava/util/Calendar;Lcom/applandeo/materialcalendarview/utils/SelectedDay;)Z
    .locals 0

    .line 85
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setLabelColors$1(Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V
    .locals 0

    .line 86
    invoke-virtual {p1, p0}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->setView(Landroid/view/View;)V

    return-void
.end method

.method private loadIcon(Landroid/widget/ImageView;Ljava/util/Calendar;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getEventDays()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getEventDays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->findFirst()Lcom/annimon/stream/Optional;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;Landroid/widget/ImageView;Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Optional;->executeIfPresent(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Optional;

    return-void

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setLabelColors(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 2

    .line 76
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->isCurrentMonthDay(Ljava/util/Calendar;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {p2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getAnotherMonthsDaysLabelsColor()I

    move-result p2

    sget v0, Lcom/applandeo/materialcalendarview/R$drawable;->background_transparent:I

    invoke-static {p1, p2, v1, v0}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setDayColors(Landroid/widget/TextView;III)V

    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->isSelectedDay(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda3;-><init>(Ljava/util/Calendar;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Lcom/annimon/stream/Stream;->findFirst()Lcom/annimon/stream/Optional;

    move-result-object p2

    new-instance v0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Lcom/annimon/stream/Optional;->ifPresent(Lcom/annimon/stream/function/Consumer;)V

    .line 88
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-static {p1, p2}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setSelectedDayColors(Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->isActiveDay(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {p2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDisabledDaysLabelsColor()I

    move-result p2

    sget v0, Lcom/applandeo/materialcalendarview/R$drawable;->background_transparent:I

    invoke-static {p1, p2, v1, v0}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setDayColors(Landroid/widget/TextView;III)V

    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mToday:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-static {p2, v0, p1, v1}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setCurrentMonthDayColors(Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getItemLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    :cond_0
    sget p3, Lcom/applandeo/materialcalendarview/R$id;->dayLabel:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/applandeo/materialcalendarview/R$id;->dayIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->loadIcon(Landroid/widget/ImageView;Ljava/util/Calendar;)V

    .line 68
    :cond_1
    invoke-direct {p0, p3, v1}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->setLabelColors(Landroid/widget/TextView;Ljava/util/Calendar;)V

    const/4 p1, 0x5

    .line 70
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method synthetic lambda$loadIcon$3$com-applandeo-materialcalendarview-adapters-CalendarDayAdapter(Landroid/widget/ImageView;Ljava/util/Calendar;Lcom/applandeo/materialcalendarview/EventDay;)V
    .locals 0

    .line 127
    invoke-virtual {p3}, Lcom/applandeo/materialcalendarview/EventDay;->getImageDrawable()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/applandeo/materialcalendarview/utils/ImageUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->isCurrentMonthDay(Ljava/util/Calendar;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->isActiveDay(Ljava/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const p2, 0x3df5c28f    # 0.12f

    .line 131
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method
