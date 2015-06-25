.class final Lcom/avira/android/common/web/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/common/web/g;


# direct methods
.method constructor <init>(Lcom/avira/android/common/web/g;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/avira/android/common/web/h;->a:Lcom/avira/android/common/web/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    .line 516
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->d()V

    .line 517
    return-void
.end method
