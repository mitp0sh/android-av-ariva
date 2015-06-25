.class final Lcom/avira/android/antitheft/yell/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/yell/e;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/yell/e;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/avira/android/antitheft/yell/g;->a:Lcom/avira/android/antitheft/yell/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/g;->a:Lcom/avira/android/antitheft/yell/e;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/e;->b(Lcom/avira/android/antitheft/yell/e;)V

    .line 168
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/g;->a:Lcom/avira/android/antitheft/yell/e;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/e;->a(Lcom/avira/android/antitheft/yell/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 169
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/g;->a:Lcom/avira/android/antitheft/yell/e;

    iget-object v1, p0, Lcom/avira/android/antitheft/yell/g;->a:Lcom/avira/android/antitheft/yell/e;

    invoke-static {v1}, Lcom/avira/android/antitheft/yell/e;->c(Lcom/avira/android/antitheft/yell/e;)Z

    move-result v1

    iget-object v2, p0, Lcom/avira/android/antitheft/yell/g;->a:Lcom/avira/android/antitheft/yell/e;

    invoke-static {v2}, Lcom/avira/android/antitheft/yell/e;->d(Lcom/avira/android/antitheft/yell/e;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/avira/android/antitheft/yell/e;->a(Lcom/avira/android/antitheft/yell/e;ZZ)V

    .line 170
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/g;->a:Lcom/avira/android/antitheft/yell/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/yell/e;->a(Lcom/avira/android/antitheft/yell/e;Z)V

    .line 171
    return-void
.end method
