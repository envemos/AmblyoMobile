.class public final synthetic Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/applandeo/materialcalendarview/DatePicker;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Lcom/applandeo/materialcalendarview/CalendarView;


# direct methods
.method public synthetic constructor <init>(Lcom/applandeo/materialcalendarview/DatePicker;Landroidx/appcompat/app/AlertDialog;Lcom/applandeo/materialcalendarview/CalendarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;->f$0:Lcom/applandeo/materialcalendarview/DatePicker;

    iput-object p2, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;->f$2:Lcom/applandeo/materialcalendarview/CalendarView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;->f$0:Lcom/applandeo/materialcalendarview/DatePicker;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;->f$2:Lcom/applandeo/materialcalendarview/CalendarView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/applandeo/materialcalendarview/DatePicker;->lambda$show$2$com-applandeo-materialcalendarview-DatePicker(Landroidx/appcompat/app/AlertDialog;Lcom/applandeo/materialcalendarview/CalendarView;Landroid/view/View;)V

    return-void
.end method
