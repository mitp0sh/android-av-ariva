.class final Lcom/avira/android/dashboard/s;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/q;


# direct methods
.method private constructor <init>(Lcom/avira/android/dashboard/q;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/avira/android/dashboard/s;->a:Lcom/avira/android/dashboard/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/dashboard/q;B)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/s;-><init>(Lcom/avira/android/dashboard/q;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/avira/android/dashboard/s;->a:Lcom/avira/android/dashboard/q;

    invoke-static {v0}, Lcom/avira/android/dashboard/q;->a(Lcom/avira/android/dashboard/q;)V

    .line 160
    return-void
.end method
