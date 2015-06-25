.class final Lcom/avira/android/antitheft/yell/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/yell/e;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/yell/e;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/avira/android/antitheft/yell/f;->a:Lcom/avira/android/antitheft/yell/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/f;->a:Lcom/avira/android/antitheft/yell/e;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/e;->a(Lcom/avira/android/antitheft/yell/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 152
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/f;->a:Lcom/avira/android/antitheft/yell/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/yell/e;->a(Lcom/avira/android/antitheft/yell/e;Z)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method
