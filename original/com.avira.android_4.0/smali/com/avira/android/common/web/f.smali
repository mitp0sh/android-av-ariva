.class final Lcom/avira/android/common/web/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/common/web/e;


# direct methods
.method constructor <init>(Lcom/avira/android/common/web/e;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/avira/android/common/web/f;->a:Lcom/avira/android/common/web/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 351
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->d()V

    .line 352
    return-void
.end method
