.class public Lcom/applandeo/materialcalendarview/utils/CalendarProperties;
.super Ljava/lang/Object;
.source "CalendarProperties.java"


# static fields
.field public static final CALENDAR_SIZE:I = 0x961

.field public static final FIRST_VISIBLE_PAGE:I = 0x4b0


# instance fields
.field private mAbbreviationsBarColor:I

.field private mAbbreviationsBarVisibility:I

.field private mAbbreviationsLabelsColor:I

.field private mAnotherMonthsDaysLabelsColor:I

.field private mCalendar:Ljava/util/Calendar;

.field private mCalendarType:I

.field private mContext:Landroid/content/Context;

.field private mDaysLabelsColor:I

.field private mDialogButtonsColor:I

.field private mDisabledDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledDaysLabelsColor:I

.field private mEventDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applandeo/materialcalendarview/EventDay;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsEnabled:Z

.field private mFirstPageCalendarDate:Ljava/util/Calendar;

.field private mForwardButtonSrc:Landroid/graphics/drawable/Drawable;

.field private mHeaderColor:I

.field private mHeaderLabelColor:I

.field private mHeaderVisibility:I

.field private mHighlightedDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightedDaysLabelsColor:I

.field private mItemLayoutResource:I

.field private mMaximumDate:Ljava/util/Calendar;

.field private mMinimumDate:Ljava/util/Calendar;

.field private mOnDayClickListener:Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;

.field private mOnForwardPageChangeListener:Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

.field private mOnPreviousPageChangeListener:Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

.field private mOnSelectDateListener:Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;

.field private mOnSelectionAbilityListener:Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;

.field private mPagesColor:I

.field private mPreviousButtonSrc:Landroid/graphics/drawable/Drawable;

.field private mSelectedDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applandeo/materialcalendarview/utils/SelectedDay;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionColor:I

.field private mSelectionLabelColor:I

.field private mSwipeEnabled:Z

.field private mTodayLabelColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mFirstPageCalendarDate:Ljava/util/Calendar;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mEventDays:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDisabledDays:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHighlightedDays:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectedDays:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$setDisabledDays$0(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 256
    invoke-static {p0}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    return-object p0
.end method

.method static synthetic lambda$setHighlightedDays$1(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 268
    invoke-static {p0}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    return-object p0
.end method

.method static synthetic lambda$setSelectedDays$2(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/utils/SelectedDay;
    .locals 1

    .line 297
    invoke-static {p0}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    .line 298
    new-instance v0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method public getAbbreviationsBarColor()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAbbreviationsBarColor:I

    return v0
.end method

.method public getAbbreviationsBarVisibility()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAbbreviationsBarVisibility:I

    return v0
.end method

.method public getAbbreviationsLabelsColor()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAbbreviationsLabelsColor:I

    return v0
.end method

.method public getAnotherMonthsDaysLabelsColor()I
    .locals 2

    .line 376
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAnotherMonthsDaysLabelsColor:I

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    sget v1, Lcom/applandeo/materialcalendarview/R$color;->nextMonthDayColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCalendarType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mCalendarType:I

    return v0
.end method

.method public getDaysLabelsColor()I
    .locals 2

    .line 352
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDaysLabelsColor:I

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    sget v1, Lcom/applandeo/materialcalendarview/R$color;->currentMonthDayColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getDialogButtonsColor()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDialogButtonsColor:I

    return v0
.end method

.method public getDisabledDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDisabledDays:Ljava/util/List;

    return-object v0
.end method

.method public getDisabledDaysLabelsColor()I
    .locals 2

    .line 304
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDisabledDaysLabelsColor:I

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    sget v1, Lcom/applandeo/materialcalendarview/R$color;->nextMonthDayColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getEventDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applandeo/materialcalendarview/EventDay;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mEventDays:Ljava/util/List;

    return-object v0
.end method

.method public getEventsEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mEventsEnabled:Z

    return v0
.end method

.method public getFirstPageCalendarDate()Ljava/util/Calendar;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mFirstPageCalendarDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getForwardButtonSrc()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mForwardButtonSrc:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderColor()I
    .locals 2

    .line 108
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHeaderColor:I

    if-gtz v0, :cond_0

    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderLabelColor()I
    .locals 2

    .line 120
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHeaderLabelColor:I

    if-gtz v0, :cond_0

    return v0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderVisibility()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHeaderVisibility:I

    return v0
.end method

.method public getHighlightedDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHighlightedDays:Ljava/util/List;

    return-object v0
.end method

.method public getHighlightedDaysLabelsColor()I
    .locals 2

    .line 316
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHighlightedDaysLabelsColor:I

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    sget v1, Lcom/applandeo/materialcalendarview/R$color;->nextMonthDayColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getItemLayoutResource()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mItemLayoutResource:I

    return v0
.end method

.method public getMaximumDate()Ljava/util/Calendar;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mMaximumDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinimumDate()Ljava/util/Calendar;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mMinimumDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getOnDayClickListener()Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnDayClickListener:Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;

    return-object v0
.end method

.method public getOnForwardPageChangeListener()Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnForwardPageChangeListener:Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    return-object v0
.end method

.method public getOnPreviousPageChangeListener()Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnPreviousPageChangeListener:Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    return-object v0
.end method

.method public getOnSelectDateListener()Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnSelectDateListener:Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;

    return-object v0
.end method

.method public getOnSelectionAbilityListener()Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnSelectionAbilityListener:Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;

    return-object v0
.end method

.method public getPagesColor()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mPagesColor:I

    return v0
.end method

.method public getPreviousButtonSrc()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mPreviousButtonSrc:Landroid/graphics/drawable/Drawable;

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

    .line 274
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectedDays:Ljava/util/List;

    return-object v0
.end method

.method public getSelectionColor()I
    .locals 2

    .line 148
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectionColor:I

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    sget v1, Lcom/applandeo/materialcalendarview/R$color;->defaultColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSelectionLabelColor()I
    .locals 2

    .line 364
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectionLabelColor:I

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    const v1, 0x106000b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSwipeEnabled()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSwipeEnabled:Z

    return v0
.end method

.method public getTodayLabelColor()I
    .locals 2

    .line 160
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mTodayLabelColor:I

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mContext:Landroid/content/Context;

    sget v1, Lcom/applandeo/materialcalendarview/R$color;->defaultColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method synthetic lambda$setSelectedDays$3$com-applandeo-materialcalendarview-utils-CalendarProperties(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDisabledDays:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setAbbreviationsBarColor(I)V
    .locals 0

    .line 340
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAbbreviationsBarColor:I

    return-void
.end method

.method public setAbbreviationsBarVisibility(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAbbreviationsBarVisibility:I

    return-void
.end method

.method public setAbbreviationsLabelsColor(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAbbreviationsLabelsColor:I

    return-void
.end method

.method public setAnotherMonthsDaysLabelsColor(I)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mAnotherMonthsDaysLabelsColor:I

    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public setCalendarType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mCalendarType:I

    return-void
.end method

.method public setDaysLabelsColor(I)V
    .locals 0

    .line 360
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDaysLabelsColor:I

    return-void
.end method

.method public setDialogButtonsColor(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDialogButtonsColor:I

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

    .line 252
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectedDays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 254
    invoke-static {p1}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;->INSTANCE:Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;

    .line 255
    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDisabledDays:Ljava/util/List;

    return-void
.end method

.method public setDisabledDaysLabelsColor(I)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mDisabledDaysLabelsColor:I

    return-void
.end method

.method public setEventDays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applandeo/materialcalendarview/EventDay;",
            ">;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mEventDays:Ljava/util/List;

    return-void
.end method

.method public setEventsEnabled(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mEventsEnabled:Z

    return-void
.end method

.method public setForwardButtonSrc(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mForwardButtonSrc:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHeaderColor(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHeaderColor:I

    return-void
.end method

.method public setHeaderLabelColor(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHeaderLabelColor:I

    return-void
.end method

.method public setHeaderVisibility(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHeaderVisibility:I

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

    .line 266
    invoke-static {p1}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda1;->INSTANCE:Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda1;

    .line 267
    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHighlightedDays:Ljava/util/List;

    return-void
.end method

.method public setHighlightedDaysLabelsColor(I)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mHighlightedDaysLabelsColor:I

    return-void
.end method

.method public setItemLayoutResource(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mItemLayoutResource:I

    return-void
.end method

.method public setMaximumDate(Ljava/util/Calendar;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mMaximumDate:Ljava/util/Calendar;

    return-void
.end method

.method public setMinimumDate(Ljava/util/Calendar;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mMinimumDate:Ljava/util/Calendar;

    return-void
.end method

.method public setOnDayClickListener(Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnDayClickListener:Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;

    return-void
.end method

.method public setOnForwardPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnForwardPageChangeListener:Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    return-void
.end method

.method public setOnPreviousPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnPreviousPageChangeListener:Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;

    return-void
.end method

.method public setOnSelectDateListener(Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnSelectDateListener:Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;

    return-void
.end method

.method public setOnSelectionAbilityListener(Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mOnSelectionAbilityListener:Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;

    return-void
.end method

.method public setPagesColor(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mPagesColor:I

    return-void
.end method

.method public setPreviousButtonSrc(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mPreviousButtonSrc:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectedDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectedDays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 1

    .line 278
    new-instance v0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-direct {v0, p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectedDay(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    return-void
.end method

.method public setSelectedDays(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mCalendarType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 291
    invoke-static {p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->isFullDatesRange(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance p1, Lcom/applandeo/materialcalendarview/exceptions/UnsupportedMethodsException;

    const-string v0, "RANGE_PICKER ACCEPTS ONLY CONTINUOUS LIST OF CALENDARS"

    invoke-direct {p1, v0}, Lcom/applandeo/materialcalendarview/exceptions/UnsupportedMethodsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda2;->INSTANCE:Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda2;

    .line 296
    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda3;-><init>(Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    .line 299
    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->filterNot(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectedDays:Ljava/util/List;

    return-void

    .line 288
    :cond_2
    new-instance p1, Lcom/applandeo/materialcalendarview/exceptions/UnsupportedMethodsException;

    const-string v0, "ONE_DAY_PICKER DOES NOT SUPPORT MULTIPLE DAYS, USE setDate() METHOD INSTEAD"

    invoke-direct {p1, v0}, Lcom/applandeo/materialcalendarview/exceptions/UnsupportedMethodsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectionColor(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectionColor:I

    return-void
.end method

.method public setSelectionLabelColor(I)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSelectionLabelColor:I

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mSwipeEnabled:Z

    return-void
.end method

.method public setTodayLabelColor(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->mTodayLabelColor:I

    return-void
.end method
