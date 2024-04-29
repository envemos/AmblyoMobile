.class Lcom/applandeo/materialcalendarview/CalendarView$1;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applandeo/materialcalendarview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applandeo/materialcalendarview/CalendarView;


# direct methods
.method constructor <init>(Lcom/applandeo/materialcalendarview/CalendarView;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/CalendarView$1;->this$0:Lcom/applandeo/materialcalendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/CalendarView$1;->this$0:Lcom/applandeo/materialcalendarview/CalendarView;

    invoke-static {v0}, Lcom/applandeo/materialcalendarview/CalendarView;->access$000(Lcom/applandeo/materialcalendarview/CalendarView;)Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getFirstPageCalendarDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x2

    .line 308
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 310
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView$1;->this$0:Lcom/applandeo/materialcalendarview/CalendarView;

    invoke-static {v1, v0, p1}, Lcom/applandeo/materialcalendarview/CalendarView;->access$100(Lcom/applandeo/materialcalendarview/CalendarView;Ljava/util/Calendar;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/CalendarView$1;->this$0:Lcom/applandeo/materialcalendarview/CalendarView;

    invoke-static {v1, v0, p1}, Lcom/applandeo/materialcalendarview/CalendarView;->access$200(Lcom/applandeo/materialcalendarview/CalendarView;Ljava/util/Calendar;I)V

    :cond_0
    return-void
.end method
