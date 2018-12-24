package sp.beans;

import java.util.ArrayList;
import java.util.List;

public class DummpExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DummpExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andDummpIdIsNull() {
            addCriterion("dummp_id is null");
            return (Criteria) this;
        }

        public Criteria andDummpIdIsNotNull() {
            addCriterion("dummp_id is not null");
            return (Criteria) this;
        }

        public Criteria andDummpIdEqualTo(Integer value) {
            addCriterion("dummp_id =", value, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdNotEqualTo(Integer value) {
            addCriterion("dummp_id <>", value, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdGreaterThan(Integer value) {
            addCriterion("dummp_id >", value, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("dummp_id >=", value, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdLessThan(Integer value) {
            addCriterion("dummp_id <", value, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdLessThanOrEqualTo(Integer value) {
            addCriterion("dummp_id <=", value, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdIn(List<Integer> values) {
            addCriterion("dummp_id in", values, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdNotIn(List<Integer> values) {
            addCriterion("dummp_id not in", values, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdBetween(Integer value1, Integer value2) {
            addCriterion("dummp_id between", value1, value2, "dummpId");
            return (Criteria) this;
        }

        public Criteria andDummpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("dummp_id not between", value1, value2, "dummpId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andVideoIdIsNull() {
            addCriterion("video_id is null");
            return (Criteria) this;
        }

        public Criteria andVideoIdIsNotNull() {
            addCriterion("video_id is not null");
            return (Criteria) this;
        }

        public Criteria andVideoIdEqualTo(Integer value) {
            addCriterion("video_id =", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdNotEqualTo(Integer value) {
            addCriterion("video_id <>", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdGreaterThan(Integer value) {
            addCriterion("video_id >", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("video_id >=", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdLessThan(Integer value) {
            addCriterion("video_id <", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdLessThanOrEqualTo(Integer value) {
            addCriterion("video_id <=", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdIn(List<Integer> values) {
            addCriterion("video_id in", values, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdNotIn(List<Integer> values) {
            addCriterion("video_id not in", values, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdBetween(Integer value1, Integer value2) {
            addCriterion("video_id between", value1, value2, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdNotBetween(Integer value1, Integer value2) {
            addCriterion("video_id not between", value1, value2, "videoId");
            return (Criteria) this;
        }

        public Criteria andDummpTimeIsNull() {
            addCriterion("dummp_time is null");
            return (Criteria) this;
        }

        public Criteria andDummpTimeIsNotNull() {
            addCriterion("dummp_time is not null");
            return (Criteria) this;
        }

        public Criteria andDummpTimeEqualTo(Integer value) {
            addCriterion("dummp_time =", value, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeNotEqualTo(Integer value) {
            addCriterion("dummp_time <>", value, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeGreaterThan(Integer value) {
            addCriterion("dummp_time >", value, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("dummp_time >=", value, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeLessThan(Integer value) {
            addCriterion("dummp_time <", value, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeLessThanOrEqualTo(Integer value) {
            addCriterion("dummp_time <=", value, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeIn(List<Integer> values) {
            addCriterion("dummp_time in", values, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeNotIn(List<Integer> values) {
            addCriterion("dummp_time not in", values, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeBetween(Integer value1, Integer value2) {
            addCriterion("dummp_time between", value1, value2, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTimeNotBetween(Integer value1, Integer value2) {
            addCriterion("dummp_time not between", value1, value2, "dummpTime");
            return (Criteria) this;
        }

        public Criteria andDummpTextIsNull() {
            addCriterion("dummp_text is null");
            return (Criteria) this;
        }

        public Criteria andDummpTextIsNotNull() {
            addCriterion("dummp_text is not null");
            return (Criteria) this;
        }

        public Criteria andDummpTextEqualTo(String value) {
            addCriterion("dummp_text =", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextNotEqualTo(String value) {
            addCriterion("dummp_text <>", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextGreaterThan(String value) {
            addCriterion("dummp_text >", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextGreaterThanOrEqualTo(String value) {
            addCriterion("dummp_text >=", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextLessThan(String value) {
            addCriterion("dummp_text <", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextLessThanOrEqualTo(String value) {
            addCriterion("dummp_text <=", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextLike(String value) {
            addCriterion("dummp_text like", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextNotLike(String value) {
            addCriterion("dummp_text not like", value, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextIn(List<String> values) {
            addCriterion("dummp_text in", values, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextNotIn(List<String> values) {
            addCriterion("dummp_text not in", values, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextBetween(String value1, String value2) {
            addCriterion("dummp_text between", value1, value2, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpTextNotBetween(String value1, String value2) {
            addCriterion("dummp_text not between", value1, value2, "dummpText");
            return (Criteria) this;
        }

        public Criteria andDummpStatementIsNull() {
            addCriterion("dummp_statement is null");
            return (Criteria) this;
        }

        public Criteria andDummpStatementIsNotNull() {
            addCriterion("dummp_statement is not null");
            return (Criteria) this;
        }

        public Criteria andDummpStatementEqualTo(Integer value) {
            addCriterion("dummp_statement =", value, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementNotEqualTo(Integer value) {
            addCriterion("dummp_statement <>", value, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementGreaterThan(Integer value) {
            addCriterion("dummp_statement >", value, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementGreaterThanOrEqualTo(Integer value) {
            addCriterion("dummp_statement >=", value, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementLessThan(Integer value) {
            addCriterion("dummp_statement <", value, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementLessThanOrEqualTo(Integer value) {
            addCriterion("dummp_statement <=", value, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementIn(List<Integer> values) {
            addCriterion("dummp_statement in", values, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementNotIn(List<Integer> values) {
            addCriterion("dummp_statement not in", values, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementBetween(Integer value1, Integer value2) {
            addCriterion("dummp_statement between", value1, value2, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpStatementNotBetween(Integer value1, Integer value2) {
            addCriterion("dummp_statement not between", value1, value2, "dummpStatement");
            return (Criteria) this;
        }

        public Criteria andDummpColorIsNull() {
            addCriterion("dummp_color is null");
            return (Criteria) this;
        }

        public Criteria andDummpColorIsNotNull() {
            addCriterion("dummp_color is not null");
            return (Criteria) this;
        }

        public Criteria andDummpColorEqualTo(String value) {
            addCriterion("dummp_color =", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorNotEqualTo(String value) {
            addCriterion("dummp_color <>", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorGreaterThan(String value) {
            addCriterion("dummp_color >", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorGreaterThanOrEqualTo(String value) {
            addCriterion("dummp_color >=", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorLessThan(String value) {
            addCriterion("dummp_color <", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorLessThanOrEqualTo(String value) {
            addCriterion("dummp_color <=", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorLike(String value) {
            addCriterion("dummp_color like", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorNotLike(String value) {
            addCriterion("dummp_color not like", value, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorIn(List<String> values) {
            addCriterion("dummp_color in", values, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorNotIn(List<String> values) {
            addCriterion("dummp_color not in", values, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorBetween(String value1, String value2) {
            addCriterion("dummp_color between", value1, value2, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpColorNotBetween(String value1, String value2) {
            addCriterion("dummp_color not between", value1, value2, "dummpColor");
            return (Criteria) this;
        }

        public Criteria andDummpPositionIsNull() {
            addCriterion("dummp_position is null");
            return (Criteria) this;
        }

        public Criteria andDummpPositionIsNotNull() {
            addCriterion("dummp_position is not null");
            return (Criteria) this;
        }

        public Criteria andDummpPositionEqualTo(Integer value) {
            addCriterion("dummp_position =", value, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionNotEqualTo(Integer value) {
            addCriterion("dummp_position <>", value, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionGreaterThan(Integer value) {
            addCriterion("dummp_position >", value, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionGreaterThanOrEqualTo(Integer value) {
            addCriterion("dummp_position >=", value, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionLessThan(Integer value) {
            addCriterion("dummp_position <", value, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionLessThanOrEqualTo(Integer value) {
            addCriterion("dummp_position <=", value, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionIn(List<Integer> values) {
            addCriterion("dummp_position in", values, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionNotIn(List<Integer> values) {
            addCriterion("dummp_position not in", values, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionBetween(Integer value1, Integer value2) {
            addCriterion("dummp_position between", value1, value2, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpPositionNotBetween(Integer value1, Integer value2) {
            addCriterion("dummp_position not between", value1, value2, "dummpPosition");
            return (Criteria) this;
        }

        public Criteria andDummpSizeIsNull() {
            addCriterion("dummp_size is null");
            return (Criteria) this;
        }

        public Criteria andDummpSizeIsNotNull() {
            addCriterion("dummp_size is not null");
            return (Criteria) this;
        }

        public Criteria andDummpSizeEqualTo(Integer value) {
            addCriterion("dummp_size =", value, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeNotEqualTo(Integer value) {
            addCriterion("dummp_size <>", value, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeGreaterThan(Integer value) {
            addCriterion("dummp_size >", value, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeGreaterThanOrEqualTo(Integer value) {
            addCriterion("dummp_size >=", value, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeLessThan(Integer value) {
            addCriterion("dummp_size <", value, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeLessThanOrEqualTo(Integer value) {
            addCriterion("dummp_size <=", value, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeIn(List<Integer> values) {
            addCriterion("dummp_size in", values, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeNotIn(List<Integer> values) {
            addCriterion("dummp_size not in", values, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeBetween(Integer value1, Integer value2) {
            addCriterion("dummp_size between", value1, value2, "dummpSize");
            return (Criteria) this;
        }

        public Criteria andDummpSizeNotBetween(Integer value1, Integer value2) {
            addCriterion("dummp_size not between", value1, value2, "dummpSize");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}