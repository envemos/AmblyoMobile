.class public final synthetic Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;

.field public final synthetic f$1:Landroid/widget/ImageView;

.field public final synthetic f$2:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;Landroid/widget/ImageView;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;

    iput-object p2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/util/Calendar;

    check-cast p1, Lcom/applandeo/materialcalendarview/EventDay;

    invoke-virtual {v0, v1, v2, p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->lambda$loadIcon$3$com-applandeo-materialcalendarview-adapters-CalendarDayAdapter(Landroid/widget/ImageView;Ljava/util/Calendar;Lcom/applandeo/materialcalendarview/EventDay;)V

    return-void
.end method
