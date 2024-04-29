.class public final synthetic Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda0;->f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda0;->f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

    check-cast p1, Lcom/applandeo/materialcalendarview/EventDay;

    invoke-static {v0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->$r8$lambda$lF5IWkGF3PhcBrPhKMeCUivrJNA(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;Lcom/applandeo/materialcalendarview/EventDay;)V

    return-void
.end method
