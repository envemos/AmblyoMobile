.class public Lcom/applandeo/materialcalendarview/EventDay;
.super Ljava/lang/Object;
.source "EventDay.java"


# instance fields
.field private mDay:Ljava/util/Calendar;

.field private mDrawable:Ljava/lang/Object;

.field private mIsDisabled:Z


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/EventDay;->mDay:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    .line 37
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/EventDay;->mDay:Ljava/util/Calendar;

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/EventDay;->mDrawable:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    .line 47
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/EventDay;->mDay:Ljava/util/Calendar;

    .line 48
    iput-object p2, p0, Lcom/applandeo/materialcalendarview/EventDay;->mDrawable:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/EventDay;->mDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getImageDrawable()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/EventDay;->mDrawable:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/applandeo/materialcalendarview/EventDay;->mIsDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/applandeo/materialcalendarview/EventDay;->mIsDisabled:Z

    return-void
.end method
