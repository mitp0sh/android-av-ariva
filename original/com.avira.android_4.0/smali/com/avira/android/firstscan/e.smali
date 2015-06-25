.class final Lcom/avira/android/firstscan/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/firstscan/b;


# direct methods
.method private constructor <init>(Lcom/avira/android/firstscan/b;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/avira/android/firstscan/e;->a:Lcom/avira/android/firstscan/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/firstscan/b;B)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/avira/android/firstscan/e;-><init>(Lcom/avira/android/firstscan/b;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/avira/android/firstscan/e;->a:Lcom/avira/android/firstscan/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avira/android/firstscan/b;->a(Lcom/avira/android/firstscan/b;Z)V

    .line 207
    return-void
.end method
