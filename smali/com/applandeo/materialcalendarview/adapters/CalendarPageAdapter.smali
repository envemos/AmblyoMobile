.class public Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CalendarPageAdapter.java"


# instance fields
.field private mCalendarGridView:Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;

.field private mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

.field private mContext:Landroid/content/Context;

.field private mPageMonth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 40
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->informDatePicker()V

    return-void
.end method

.method private informDatePicker()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnSelectionAbilityListener()Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnSelectionAbilityListener()Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectedDays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;->onChange(Z)V

    :cond_1
    return-void
.end method

.method private loadMonth(I)V
    .locals 7

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getFirstPageCalendarDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x2

    .line 117
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x5

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x7

    .line 123
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 126
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v6

    if-ge v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v3, v5

    sub-int/2addr v3, v6

    neg-int v3, v3

    .line 130
    invoke-virtual {v0, p1, v3}, Ljava/util/Calendar;->add(II)V

    .line 136
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x2a

    if-ge v3, v5, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mPageMonth:I

    .line 142
    new-instance p1, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget v5, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mPageMonth:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;-><init>(Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;Ljava/util/ArrayList;I)V

    .line 145
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarGridView:Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public addSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->informDatePicker()V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->informDatePicker()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/16 v0, 0x961

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getSelectedDay()Lcom/applandeo/materialcalendarview/utils/SelectedDay;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    return-object v0
.end method

.method public getSelectedDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applandeo/materialcalendarview/utils/SelectedDay;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    sget v1, Lcom/applandeo/materialcalendarview/R$layout;->calendar_view_grid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarGridView:Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;

    .line 63
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->loadMonth(I)V

    .line 65
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarGridView:Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;

    new-instance v0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget v2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mPageMonth:I

    invoke-direct {v0, p0, v1, v2}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;-><init>(Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;I)V

    invoke-virtual {p2, v0}, Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarGridView:Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarGridView:Lcom/applandeo/materialcalendarview/extensions/CalendarGridView;

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    .line 93
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->informDatePicker()V

    return-void
.end method
