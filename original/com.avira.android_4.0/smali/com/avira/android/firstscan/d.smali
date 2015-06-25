.class final Lcom/avira/android/firstscan/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/firstscan/b;


# direct methods
.method private constructor <init>(Lcom/avira/android/firstscan/b;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/avira/android/firstscan/d;->a:Lcom/avira/android/firstscan/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/firstscan/b;B)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/avira/android/firstscan/d;-><init>(Lcom/avira/android/firstscan/b;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/avira/android/firstscan/d;->a:Lcom/avira/android/firstscan/b;

    invoke-static {v0}, Lcom/avira/android/firstscan/b;->a(Lcom/avira/android/firstscan/b;)V

    .line 219
    return-void
.end method
