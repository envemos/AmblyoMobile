.class public final synthetic Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    check-cast p1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-static {v0, p1}, Lcom/applandeo/materialcalendarview/adapters/CalendarDayAdapter;->lambda$setLabelColors$1(Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/SelectedDay;)V

    return-void
.end method
