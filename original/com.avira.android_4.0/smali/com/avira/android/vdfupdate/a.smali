.class final Lcom/avira/android/vdfupdate/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avira/android/vdfupdate/a;->a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avira/android/vdfupdate/a;->a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;

    invoke-static {v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)Lcom/avira/android/vdfupdate/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/avira/android/vdfupdate/a;->a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;

    invoke-static {v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/avira/android/vdfupdate/a;->a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;

    invoke-static {v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method
