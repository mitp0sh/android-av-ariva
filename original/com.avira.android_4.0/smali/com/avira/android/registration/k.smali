.class final Lcom/avira/android/registration/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/registration/j;


# direct methods
.method constructor <init>(Lcom/avira/android/registration/j;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/avira/android/registration/k;->a:Lcom/avira/android/registration/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 194
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->d()V

    .line 195
    return-void
.end method
