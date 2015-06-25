.class final Lcom/avira/android/iab/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/h;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/h;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/avira/android/iab/j;->a:Lcom/avira/android/iab/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/avira/android/iab/j;->a:Lcom/avira/android/iab/h;

    iget-object v0, v0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->d(Lcom/avira/android/iab/IABRequestService;)V

    .line 344
    return-void
.end method
