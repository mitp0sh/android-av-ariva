.class final Lcom/mixpanel/android/surveys/l;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mixpanel/android/surveys/SurveyChoiceView;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mixpanel/android/surveys/l;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/l;-><init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 113
    const/4 v1, 0x0

    .line 115
    cmpg-float v2, p1, v3

    if-gtz v2, :cond_0

    .line 116
    sub-float v1, p1, v3

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/mixpanel/android/surveys/l;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-static {v2, v1}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->a(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F

    .line 121
    iget-object v1, p0, Lcom/mixpanel/android/surveys/l;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-static {v1, v0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->b(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F

    .line 122
    iget-object v0, p0, Lcom/mixpanel/android/surveys/l;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-virtual {v0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->requestLayout()V

    .line 123
    return-void

    .line 118
    :cond_0
    sub-float v2, p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public final willChangeBounds()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public final willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
