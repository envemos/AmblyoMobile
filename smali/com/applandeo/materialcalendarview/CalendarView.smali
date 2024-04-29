.class public Lcom/applandeo/materialcalendarview/CalendarView;
.super Landroid/widget/LinearLayout;
.source "CalendarView.java"


# static fields
.field public static final CLASSIC:I = 0x0

.field public static final MANY_DAYS_PICKER:I = 0x2

.field public static final ONE_DAY_PICKER:I = 0x1

.field public static final RANGE_PICKER:I = 0x3


# instance fields
.field private mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

.field private mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

.field private mContext:Landroid/content/Context;

.field private mCurrentMonthLabel:Landroid/widget/TextView;

.field private mCurrentPage:I

.field private mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

.field private final onNextClickListener:Landroid/view/View$OnClickListener;

.field private final onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final onPreviousClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 288
    new-instance v0, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda0;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onNextClickListener:Landroid/view/View$OnClickListener;

    .line 291
    new-instance v0, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda1;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPreviousClickListener:Landroid/view/View$OnClickListener;

    .line 294
    new-instance v0, Lcom/applandeo/materialcalendarview/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/CalendarView$1;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/CalendarView;->initControl(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->initCalendar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 288
    new-instance p3, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda0;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object p3, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onNextClickListener:Landroid/view/View$OnClickListener;

    .line 291
    new-instance p3, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda1;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object p3, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPreviousClickListener:Landroid/view/View$OnClickListener;

    .line 294
    new-instance p3, Lcom/applandeo/materialcalendarview/CalendarView$1;

    invoke-direct {p3, p0}, Lcom/applandeo/materialcalendarview/CalendarView$1;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object p3, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/CalendarView;->initControl(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->initCalendar()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 288
    new-instance v0, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda0;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onNextClickListener:Landroid/view/View$OnClickListener;

    .line 291
    new-instance v0, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda1;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPreviousClickListener:Landroid/view/View$OnClickListener;

    .line 294
    new-instance v0, Lcom/applandeo/materialcalendarview/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/CalendarView$1;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 85
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    const-string p2, "layout_inflater"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 89
    sget p2, Lcom/applandeo/materialcalendarview/R$layout;->calendar_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->initUiElements()V

    .line 92
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->initAttributes()V

    .line 93
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->initCalendar()V

    return-void
.end method

.method static synthetic access$000(Lcom/applandeo/materialcalendarview/CalendarView;)Lcom/applandeo/materialcalendarview/utils/CalendarProperties;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    return-object p0
.end method

.method static synthetic access$100(Lcom/applandeo/materialcalendarview/CalendarView;Ljava/util/Calendar;I)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/CalendarView;->isScrollingLimited(Ljava/util/Calendar;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/applandeo/materialcalendarview/CalendarView;Ljava/util/Calendar;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/applandeo/materialcalendarview/CalendarView;->setHeaderName(Ljava/util/Calendar;I)V

    return-void
.end method

.method private callOnPageChangeListeners(I)V
    .locals 1

    .line 341
    iget v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCurrentPage:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnForwardPageChangeListener()Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnForwardPageChangeListener()Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;->onChange()V

    .line 345
    :cond_0
    iget v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCurrentPage:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnPreviousPageChangeListener()Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnPreviousPageChangeListener()Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;->onChange()V

    .line 349
    :cond_1
    iput p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCurrentPage:I

    return-void
.end method

.method private initAttributes()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHeaderColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setHeaderColor(Landroid/view/View;I)V

    .line 185
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHeaderVisibility()I

    move-result v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setHeaderVisibility(Landroid/view/View;I)V

    .line 187
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getAbbreviationsBarVisibility()I

    move-result v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setAbbreviationsBarVisibility(Landroid/view/View;I)V

    .line 189
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHeaderLabelColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setHeaderLabelColor(Landroid/view/View;I)V

    .line 191
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getAbbreviationsBarColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setAbbreviationsBarColor(Landroid/view/View;I)V

    .line 193
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getAbbreviationsLabelsColor()I

    move-result v1

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 194
    invoke-virtual {v2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getFirstPageCalendarDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 193
    invoke-static {v0, v1, v2}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setAbbreviationsLabels(Landroid/view/View;II)V

    .line 196
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getPagesColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setPagesColor(Landroid/view/View;I)V

    .line 198
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getPreviousButtonSrc()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setPreviousButtonImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getForwardButtonSrc()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setForwardButtonImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSwipeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setSwipeEnabled(Z)V

    .line 205
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->setCalendarRowLayout()V

    return-void
.end method

.method private initCalendar()V
    .locals 3

    .line 259
    new-instance v0, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-direct {v0, v1, v2}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;-><init>(Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    .line 261
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    invoke-virtual {v1, v0}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 262
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applandeo/materialcalendarview/CalendarView;->setUpCalendarPosition(Ljava/util/Calendar;)V

    return-void
.end method

.method private initCalendarProperties(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 124
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_headerColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 125
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderColor(I)V

    .line 127
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_headerLabelColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 128
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderLabelColor(I)V

    .line 130
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_abbreviationsBarColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 131
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAbbreviationsBarColor(I)V

    .line 133
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_abbreviationsLabelsColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 134
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAbbreviationsLabelsColor(I)V

    .line 136
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_pagesColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 137
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setPagesColor(I)V

    .line 139
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_daysLabelsColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 140
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setDaysLabelsColor(I)V

    .line 142
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_anotherMonthsDaysLabelsColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 143
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAnotherMonthsDaysLabelsColor(I)V

    .line 145
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_todayLabelColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 146
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setTodayLabelColor(I)V

    .line 148
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_selectionColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 149
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectionColor(I)V

    .line 151
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_selectionLabelColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 152
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectionLabelColor(I)V

    .line 154
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_disabledDaysLabelsColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 155
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setDisabledDaysLabelsColor(I)V

    .line 157
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_highlightedDaysLabelsColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 158
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHighlightedDaysLabelsColor(I)V

    .line 160
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_type:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 161
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setCalendarType(I)V

    .line 164
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_datePicker:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, v2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setCalendarType(I)V

    .line 168
    :cond_0
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_eventsEnabled:I

    iget-object v3, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 169
    invoke-virtual {v3}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getCalendarType()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 168
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setEventsEnabled(Z)V

    .line 172
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_swipeEnabled:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSwipeEnabled(Z)V

    .line 175
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_previousButtonSrc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setPreviousButtonSrc(Landroid/graphics/drawable/Drawable;)V

    .line 178
    sget v0, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView_forwardButtonSrc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setForwardButtonSrc(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initControl(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-direct {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    const-string v0, "layout_inflater"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 101
    sget v0, Lcom/applandeo/materialcalendarview/R$layout;->calendar_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->initUiElements()V

    .line 104
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/CalendarView;->setAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initUiElements()V
    .locals 2

    .line 247
    sget v0, Lcom/applandeo/materialcalendarview/R$id;->forwardButton:I

    invoke-virtual {p0, v0}, Lcom/applandeo/materialcalendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 248
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onNextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget v0, Lcom/applandeo/materialcalendarview/R$id;->previousButton:I

    invoke-virtual {p0, v0}, Lcom/applandeo/materialcalendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 251
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->onPreviousClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    sget v0, Lcom/applandeo/materialcalendarview/R$id;->currentDateLabel:I

    invoke-virtual {p0, v0}, Lcom/applandeo/materialcalendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCurrentMonthLabel:Landroid/widget/TextView;

    .line 255
    sget v0, Lcom/applandeo/materialcalendarview/R$id;->calendarViewPager:I

    invoke-virtual {p0, v0}, Lcom/applandeo/materialcalendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    return-void
.end method

.method private isScrollingLimited(Ljava/util/Calendar;I)Z
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->isMonthBefore(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 322
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setCurrentItem(I)V

    return v1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->isMonthAfter(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setCurrentItem(I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$getSelectedDates$2(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    return-object p0
.end method

.method private setAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/applandeo/materialcalendarview/R$styleable;->CalendarView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 116
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/CalendarView;->initCalendarProperties(Landroid/content/res/TypedArray;)V

    .line 117
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->initAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private setCalendarRowLayout()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    sget v1, Lcom/applandeo/materialcalendarview/R$layout;->calendar_view_day:I

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setItemLayoutResource(I)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    sget v1, Lcom/applandeo/materialcalendarview/R$layout;->calendar_view_picker_day:I

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setItemLayoutResource(I)V

    :goto_0
    return-void
.end method

.method private setHeaderName(Ljava/util/Calendar;I)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCurrentMonthLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getMonthAndYearDate(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-direct {p0, p2}, Lcom/applandeo/materialcalendarview/CalendarView;->callOnPageChangeListeners(I)V

    return-void
.end method

.method private setUpCalendarPosition(Ljava/util/Calendar;)V
    .locals 2

    .line 268
    invoke-static {p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    .line 270
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getCalendarType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectedDay(Ljava/util/Calendar;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getFirstPageCalendarDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 275
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getFirstPageCalendarDate()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    const/16 v1, -0x4b0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 277
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    const/16 v0, 0x4b0

    invoke-virtual {p1, v0}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public getCurrentPageDate()Ljava/util/Calendar;
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getFirstPageCalendarDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 441
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 442
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public getFirstSelectedDate()Ljava/util/Calendar;
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda2;

    .line 433
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->findFirst()Lcom/annimon/stream/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public getSelectedDate()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getFirstSelectedDate()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->getSelectedDays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda2;

    .line 411
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;->INSTANCE:Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;

    .line 412
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->sortBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$com-applandeo-materialcalendarview-CalendarView(Landroid/view/View;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setCurrentItem(I)V

    return-void
.end method

.method synthetic lambda$new$1$com-applandeo-materialcalendarview-CalendarView(Landroid/view/View;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setAbbreviationsBarVisibility(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAbbreviationsBarVisibility(I)V

    .line 220
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getAbbreviationsBarVisibility()I

    move-result v0

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setAbbreviationsBarVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    new-instance p1, Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException;

    const-string v0, "SET DATE EXCEEDS THE MINIMUM DATE"

    invoke-direct {p1, v0}, Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 371
    :cond_2
    new-instance p1, Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException;

    const-string v0, "SET DATE EXCEEDS THE MAXIMUM DATE"

    invoke-direct {p1, v0}, Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/CalendarView;->setUpCalendarPosition(Ljava/util/Calendar;)V

    .line 376
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCurrentMonthLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getMonthAndYearDate(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException;
        }
    .end annotation

    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 387
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/applandeo/materialcalendarview/CalendarView;->setDate(Ljava/util/Calendar;)V

    return-void
.end method

.method public setDisabledDays(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setDisabledDays(Ljava/util/List;)V

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applandeo/materialcalendarview/EventDay;",
            ">;)V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setEventDays(Ljava/util/List;)V

    .line 402
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setForwardButtonImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setForwardButtonSrc(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getForwardButtonSrc()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setForwardButtonImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHeaderColor(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderColor(I)V

    .line 210
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHeaderColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setHeaderColor(Landroid/view/View;I)V

    return-void
.end method

.method public setHeaderLabelColor(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderLabelColor(I)V

    .line 225
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHeaderLabelColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setHeaderLabelColor(Landroid/view/View;I)V

    return-void
.end method

.method public setHeaderVisibility(I)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHeaderVisibility()I

    move-result v0

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setHeaderVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public setHighlightedDays(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHighlightedDays(Ljava/util/List;)V

    return-void
.end method

.method public setMaximumDate(Ljava/util/Calendar;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setMaximumDate(Ljava/util/Calendar;)V

    return-void
.end method

.method public setMinimumDate(Ljava/util/Calendar;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setMinimumDate(Ljava/util/Calendar;)V

    return-void
.end method

.method public setOnDayClickListener(Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setOnDayClickListener(Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;)V

    return-void
.end method

.method public setOnForwardPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setOnForwardPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V

    return-void
.end method

.method public setOnPreviousPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setOnPreviousPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V

    return-void
.end method

.method public setPreviousButtonImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setPreviousButtonSrc(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getPreviousButtonSrc()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applandeo/materialcalendarview/utils/AppearanceUtils;->setPreviousButtonImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectedDays(Ljava/util/List;)V

    .line 417
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarPageAdapter:Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSwipeEnabled(Z)V

    .line 482
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSwipeEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setSwipeEnabled(Z)V

    return-void
.end method

.method public showCurrentMonthPage()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView;->mViewPager:Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->getCurrentItem()I

    move-result v1

    .line 469
    invoke-static {}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->getCurrentPageDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getMonthsBetweenDates(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    .line 468
    invoke-virtual {v0, v1, v2}, Lcom/applandeo/materialcalendarview/extensions/CalendarViewPager;->setCurrentItem(IZ)V

    return-void
.end method
