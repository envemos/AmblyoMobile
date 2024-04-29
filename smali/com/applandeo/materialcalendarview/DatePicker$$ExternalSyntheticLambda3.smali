.class public final synthetic Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/applandeo/materialcalendarview/CalendarView;


# direct methods
.method public synthetic constructor <init>(Lcom/applandeo/materialcalendarview/CalendarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda3;->f$0:Lcom/applandeo/materialcalendarview/CalendarView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda3;->f$0:Lcom/applandeo/materialcalendarview/CalendarView;

    check-cast p1, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcom/applandeo/materialcalendarview/DatePicker;->lambda$show$0(Lcom/applandeo/materialcalendarview/CalendarView;Ljava/util/Calendar;)V

    return-void
.end method
