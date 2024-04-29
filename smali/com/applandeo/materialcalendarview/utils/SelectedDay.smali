.class public Lcom/applandeo/materialcalendarview/utils/SelectedDay;
.super Ljava/lang/Object;
.source "SelectedDay.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/Calendar;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->mView:Landroid/view/View;

    .line 28
    iput-object p2, p0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->mCalendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 51
    instance-of v0, p1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    check-cast p1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 55
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 59
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/SelectedDay;->mView:Landroid/view/View;

    return-void
.end method
