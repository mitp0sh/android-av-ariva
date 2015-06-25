.class final Lcom/avira/android/blacklist/d/w;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/v;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/d/v;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avira/android/blacklist/d/w;->a:Lcom/avira/android/blacklist/d/v;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/blacklist/d/w;->a:Lcom/avira/android/blacklist/d/v;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/v;->a(Lcom/avira/android/blacklist/d/v;)V

    .line 51
    return-void
.end method
