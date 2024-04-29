.class public Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CalendarViewPager.java"


# instance fields
.field private mSwipeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->mSwipeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->mSwipeEnabled:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->mSwipeEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 31
    invoke-virtual {p0, v1}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 32
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v2, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/high16 p2, 0x40000000    # 2.0f

    .line 42
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 45
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->mSwipeEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->mSwipeEnabled:Z

    return-void
.end method
